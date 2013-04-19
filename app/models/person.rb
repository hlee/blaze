class Person < ActiveRecord::Base
  attr_accessible :email, :location, :name, :power 
  include Gravtastic
  gravtastic
end
