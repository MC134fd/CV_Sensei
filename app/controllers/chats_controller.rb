class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cv, only: [:new, :create]
  before_action :set_chat, only: :show

  # GET /cvs/:cv_id/chats/new
  # def new
  #   @chat = @cv.chats.new
  # end
  #dont need becasue it is covered by show page in cvs controller

  # POST /cvs/:cv_id/chats
  def create
    @chat = @cv.chats.new(chat_params)
    @chat.user = current_user

    if @chat.save
      redirect_to @chat
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /chats/:id
  def show
    @messages = @chat.messages.order(created_at: :asc)
    @message = Message.new
  end

  private

  def set_cv
    @cv = Cv.find(params[:cv_id])
  end

  def set_chat
    @chat = Chat.find(params[:id])
  end

  def chat_params
    params.require(:chat).permit(:desired_role, :job_description)
  end
end
