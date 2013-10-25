class Ituneship < ActiveRecord::Base
  attr_accessible :band_id, :fan_id
  belongs_to :band
  belongs_to :fan
end
