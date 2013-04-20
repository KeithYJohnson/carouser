class Event < ActiveRecord::Base
  attr_accessible :event, :title, :address, :date, :start_time, :end_time, :description, :where, :host_id

  has_many :reservations
  belongs_to :host, :class_name => "User" ,:foreign_key => "host_id"
  has_many :comments, :dependent => :destroy

  validates :address, :presence => :true
  ##validates_presence	

  geocoded_by :address
  after_validation :geocode

end
