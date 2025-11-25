class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cv, only: :create
  before_action :set_chat, only: :show

  def create
    @chat = @cv.chats.new(chat_params)

    if @chat.save
      redirect_to cv_chat_path(@cv, @chat)
    else
      render 'cvs/show', status: :unprocessable_entity
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
    params.require(:chat).permit(:job_title, :job_description)
  end
end
