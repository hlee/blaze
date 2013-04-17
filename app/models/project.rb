class Project < ActiveRecord::Base
  attr_accessible :description, :detail, :home_url, :title, :github_url
  validates :description, :title, :home_url, :presence => true
  has_many :attachments, :dependent=>:destroy 
end
