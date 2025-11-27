class MessagesController < ApplicationController
  # added the devise before_action fuction
  # added before action set chat fuction so it loads the chat before any actio
  before_action :authenticate_user!
  before_action :set_chat

  # CV_PROMPT was moved to application controller, to make it available in the chat's controller as well.

  def create
    # creates a new message nested within chat according to message_params
    # linking the message chat_id to chat.id so the message knows wwhic chat it belongs to

    @message = @chat.messages.new(message_params)
    @message.chat = @chat

    # so that the user knows the message is made by a user
    @message.role = "user"

    if @message.save
      # this logic is for if the file is a pdf or actual text c ntent and directs the the right method
      if @message.file.attached?
        process_file(@message.file)
      else
        send_question
      end
      redirect_to chat_path(@chat)
    else
        # re-render the chat page with errors
        # @cv = @chat.cv ---------------------- AS A LATER FEATURE?
        @messages = @chat.messages.order(:created_at)
        render "chats/show", status: :unprocessable_entity
    end
  end

  private

  def process_file(file)
    # adding if else logic do that once it detects the pdf or image it gets directed to the specific model
    if file.content_type == "application/pdf"
      send_question(model: "gemini-2.0-flash", with: { pdf: @message.file.url })
    elsif file.image?
      send_question(model: "gpt-4o", with: { image: @message.file.url})
    end
  end

  def send_question(model: "gpt-4o-mini", with: {})
    # sending request to chat with llm
      @cv_chat = RubyLLM.chat(model: model)
      build_conversation_history
      response = @cv_chat.with_instructions(instructions).ask(@message.content, with: with)

      # assitant reply message
      @chat.messages.create!(
        role: "assistant",
        content: response.content
      )
  end

  def build_conversation_history
    @chat.messages.each do |message|
      @cv_chat.add_message(message)
    end
  end

  # finds the chat that belongs to the current user
  # matches your schema: chats has user_id, cv_id
  def set_chat
    @chat = current_user.chats.find(params[:chat_id])
  end

  # only allow the content field from the form
  def message_params
    params.require(:message).permit(:content, :file)
  end

  # builds context from the chat + cv (matches your cv_id / job_title / job_description columns)
  def instructions
    # cv = @chat.cv ---------------------- AS A LATER FEATURE?

    [
      CV_PROMPT,
      "Job title: #{@chat.job_title}",
      "Job description: #{@chat.job_description}"
      # "Current CV:\n#{cv.content}" ---------------------- AS A LATER FEATURE?
    ].join("\n\n")
  end
end
