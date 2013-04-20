class AdminController < ApplicationController
	http_basic_authenticate_with :name => "songjiayang", :password => "liushan1314"
  def index
  	@projects = Project.all
  end
end
