#encoding : utf-8
class Admin::ProjectsController < AdminController
	
	def index
  	@projects = Project.all
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def update
  	@project = Project.find(params[:id])
  	 if  @project && @project.update_attributes(params[:project])
         flash[:success] = "编号为#{@project.id}的广告修改成功"
         redirect_to admin_root_path(@project)
     else
         flash[:error] = @project.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
         redirect_to edit_admins_ad_path(@project)
    end
  end
end