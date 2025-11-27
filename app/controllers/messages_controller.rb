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
      # call LLM with system prompt engineering n context
      cv_chat = RubyLLM.chat
      response = cv_chat.with_instructions(instructions).ask(@message.content)

      # assistant reply message
      @chat.messages.create!(
        role: "assistant",
        content: response.content
      )

      redirect_to chat_path(@chat)
    else
      # re-render the chat page with errors
      # @cv = @chat.cv ---------------------- AS A LATER FEATURE?
      @messages = @chat.messages.order(:created_at)
      render "chats/show", status: :unprocessable_entity
    end
  end

  private

  # finds the chat that belongs to the current user
  # matches your schema: chats has user_id, cv_id
  def set_chat
    @chat = current_user.chats.find(params[:chat_id])
  end

  # only allow the content field from the form
  def message_params
    params.require(:message).permit(:content)
  end

  # builds context from the chat + cv (matches your cv_id / job_title / job_description columns)
  def instructions
    # cv = @chat.cv ---------------------- AS A LATER FEATURE?

    [
      CV_PROMPT,
      "Job title: #{@chat.job_title}",
      "Job description: #{@chat.job_description}",
      "Current CV:\n#{cv.content}"
    ].join("\n\n")
  end
end
