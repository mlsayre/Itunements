class Band < ActiveRecord::Base
  attr_accessible :name
  has_many :ituneships
  has_many :fans, :through => :ituneships
end
