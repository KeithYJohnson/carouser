class Event < ActiveRecord::Base
  attr_accessible :address, :where, :date, :description, :end_time, :host_id, :start_time, :title, :longitude, :latitude

  has_many :reservations
  belongs_to :host, :class_name => "User" ,:foreign_key => "host_id"
  has_many :comments

  validates :address, :presence => :true	

  geocoded_by :address
  after_validation :geocode

end
