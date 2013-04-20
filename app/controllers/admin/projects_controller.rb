#encoding : utf-8
class Admin::ProjectsController < AdminController
	
	def index
  	@projects = Project.all
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
        redirect_to admin_root_path
    else
        redirect_to new_admin_project_path
    end
  end

  def update
  	@project = Project.find(params[:id])
  	 if  @project && @project.update_attributes(params[:project])
         flash[:success] = "编号为#{@project.id}的广告修改成功"
         redirect_to admin_root_path
     else
         flash[:error] = @project.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
         redirect_to edit_admins_ad_path(@project)
    end
  end

  def destroy
     @project = Project.find(params[:id])
     if  @project && @project.destroy
         flash[:success] = "编号为#{@project.id}的项目删除成功"
     else
         flash[:error] = @project.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
    end
    redirect_to admin_root_path
  end
end