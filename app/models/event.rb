class Event < ActiveRecord::Base
  attr_accessible :address, :date, :description, :end_time, :host_id, :start_time, :title, :longitude, :latitude
  geocoded_by :address


end
