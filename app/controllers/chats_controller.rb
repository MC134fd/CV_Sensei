class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    @chat.cv = params[:cv_id]
    if @chat.save
      redirect_to @chat, status: :see_other
    else
      render :new
      render 'rooms/show', status: :unprocessable_entity
    end
  end

  def show
    @chat = Chat.find(params[:id])
  end

  private

  def chat_params
    params.require(:chat).permit(:job_title, :job_description)
  end
end
