class AdminController < ApplicationController
  USERS = {"songjiayang" => "liushan1314", "ken" => "password123"}

  before_filter :authenticate
  def index
  	@projects = Project.all
  end

  private

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
