class Attachment < ActiveRecord::Base
  attr_accessible :img_path, :project_id
  validates :img_path, :presence => true
  belongs_to :project
end
