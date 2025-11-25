class CvsController < ApplicationController
  def index
  end

  def new
    @cv = Cv.new
  end

  def create
    @cv = Cv.new(cv_params)
    if @cv.save
      redirect_to cv_path(@cv), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @cv = Cv.find(params[:id])
  end

  private

  def cv_params
    params.require(:cv).permit(:id, :content, :title)
  end
end
