class HomeController < ApplicationController
  
  def index
  	@projects = Project.all
  	@persons = Person.all
  end

  def project
  	@project = Project.find(params[:id].to_i)
  	@attachments = @project.attachments
  end

end
