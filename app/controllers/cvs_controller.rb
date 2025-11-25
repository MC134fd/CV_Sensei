class CvsController < ApplicationController
  def new
    @cv = Cv.new
  end

  def create
    @cv = Cv.new(cv_params)
    if @cv.save
      redirect_to
  end

  def show
    @cv = Cv.find(params[:id])
  end

  private

  def cv_params
    params.require(:cv).permit(:id)
  end
end
