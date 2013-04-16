class AddProjectIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :project_id, :integer
    rename_column :attachments , :file_path, :img_path
  end
end
