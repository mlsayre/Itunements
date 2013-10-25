class Fan < ActiveRecord::Base
  attr_accessible :name
  has_many :ituneships
  has_many  :bands, :through => :ituneships
end
