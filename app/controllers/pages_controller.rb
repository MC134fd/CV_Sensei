class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
# This will allow users not logged in to only view the homepage
  def home
  end
end
