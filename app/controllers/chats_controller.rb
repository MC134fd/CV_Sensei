class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cv, only: [:create]
  before_action :set_chat, only: :show

  # GET /chats
  def index
    @chats = Chat.where(user: current_user)
  end

  # GET /cvs/:cv_id/chats/new
  # def new
  #   @chat = @cv.chats.new
  # end
  #dont need becasue it is covered by show page in cvs controller

  # POST /cvs/:cv_id/chats
  def create
    @chat = Chat.new(chat_params)
    @chat.cv = @cv
    @chat.user = current_user

    if @chat.save
      @chat.generate_title
      # creating the new message, out of the chat form
      @first_message = @chat.messages.new(content: first_message_content)
      @first_message.chat = @chat
      @first_message.role = "user"
      if @first_message.save
        # call LLM with system prompt engineering n context
        cv_chat = RubyLLM.chat
        response = cv_chat.with_instructions(CV_PROMPT).ask(@first_message.content)

        # assistant reply message
        @chat.messages.create!(
          role: "assistant",
          content: response.content
        )
      end
      # redirecting to the chat show page
      redirect_to chat_url(@chat)
    else
      render "cvs/show", status: :unprocessable_entity
    end
  end

  # GET /chats/:id
  def show
    @messages = @chat.messages.order(created_at: :asc)
    @message = Message.new
    @chats = @chat.cv.chats
    @cv = @chat.cv
    @new_chat = Chat.new
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to chats_path, status: :see_other
  end

  private


  def set_cv
    @cv = Cv.find(params[:cv_id])
  end

  def set_chat
    @chat = Chat.find(params[:id])
  end

  def chat_params
    params.require(:chat).permit(:job_title, :job_description)
  end

  def first_message_content
    "Job Title: #{@chat.job_title} \n Job Description: #{@chat.job_description}"
  end
end
