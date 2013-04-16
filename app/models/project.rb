class Project < ActiveRecord::Base
  attr_accessible :description, :detail, :out_url, :title
  validates :description, :title, :out_url, :presence => true
end
