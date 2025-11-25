class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cv, only: :create
  before_action :set_chat, only: :show

  def create
    @chat = @cv.chats.new(chat_params)
    @chat.user = current_user

    if @chat.save
      redirect_to @chat
    else
      render :new, status: :unprocessable_entity
    end
  end

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
