#encoding : utf-8
class Admin::PersonsController < AdminController
	
	def index
  	@persons = Person.all
  end

  def edit
  	@person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
        redirect_to admin_persons_path
    else
        redirect_to new_admin_person_path
    end
  end

  def update
  	@person = Person.find(params[:id])
  	 if  @person && @person.update_attributes(params[:person])
         flash[:success] = "编号为#{@person.id}的广告修改成功"
         redirect_to admin_persons_path
     else
         flash[:error] = @person.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
         redirect_to edit_admins_person_path(@person)
    end
  end

  def destroy
     @person = Person.find(params[:id])
     if  @person && @person.destroy
         flash[:success] = "编号为#{@person.id}的项目删除成功"
     else
         flash[:error] = @person.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
    end
    redirect_to admin_persons_path
  end
end