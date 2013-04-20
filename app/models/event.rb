class Event < ActiveRecord::Base
  attr_accessible :address, :where, :date, :description, :end_time, :host_id, :start_time, :title, :longitude, :latitude

  validates :address, :presence => :true	

  geocoded_by :address
  after_validation :geocode

end
