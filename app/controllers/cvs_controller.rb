class CvsController < ApplicationController
  def new
    @cv = Cv.new
  end

  def create
    @cv = Cv.new(cv_params)
    @cv.user = current_user
    if @cv.save
      redirect_to @cv, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @cv = Cv.find(params[:id])
    @chat = Chat.new
  end

  private

  def cv_params
    params.require(:cv).permit(:id, :title, :content)
  end

end
