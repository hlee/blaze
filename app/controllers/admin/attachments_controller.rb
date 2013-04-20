#encoding : utf-8
class Admin::AttachmentsController < AdminController
	
	def index
  	@attachments = Attachment.all
  end

  def edit
  	@attachment = Attachment.find(params[:id])
  end

  def update
  	@attachment = Attachment.find(params[:id])
  	 if  @attachment && @attachment.update_attributes(params[:attachment])
         flash[:success] = "编号为#{@attachment.id}的广告修改成功"
         redirect_to admin_attachments_path
     else
         flash[:error] = @attachment.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
         redirect_to edit_admins_attachment_path(@attachment)
    end
  end

  def destroy
     @attachment = Attachment.find(params[:id])
     if  @attachment && @attachment.destroy
         flash[:success] = "编号为#{@attachment.id}的项目删除成功"
     else
         flash[:error] = @attachment.errors.messages.map{|k,v|k.to_s+": "+v.join(",")}.join("."+'<br/>')
    end
    redirect_to admin_attachments_path
  end

  def new
    @attachment = Attachment.new
  end

  def create
     @attachment = Attachment.new(params[:attachment])
    if @attachment.save
        redirect_to admin_attachments_path
    else
        redirect_to new_admin_attachment_path
    end
    
  end
end