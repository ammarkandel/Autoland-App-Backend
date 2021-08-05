class ApplicationController < ActionController::API
  include Knock::Authenticable
  # disable authenticate_user until manage SSL Certificate
  # before_action :authenticate_user
end
