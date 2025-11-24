class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Makes sure the user is logged in before allowing them to see any page
  # (apart from the homepage - set in pages controller)
end
