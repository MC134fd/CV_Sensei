class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    @chat.cv = Cv.find(params[:cv_id])
    if @chat.save
      # redirect_to cv_chat_path(@chat.cv, @chat), status: :see_other
      @chats = @chat.cv.chats
      render 'cvs/show', status
    else
      # # render :new
      # render 'cvs/show', status: :unprocessable_entity

      # # Ensure rooms/show has what it needs
      # @chats = @room.chats.order(created_at: :asc)
      # render 'rooms/show', status: :unprocessable_entity

      @chats = @chat.cv.chats
      render 'cvs/show', status

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
