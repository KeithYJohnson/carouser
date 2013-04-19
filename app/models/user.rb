class User < ActiveRecord::Base
  attr_accessible :age, :host, :interests, :name

  has_many :reservations
  has_many :hosted_events, :class_name=> 'Event', :foreign_key => 'host_id'
  has_many :attended_events, :class_name=> 'Event' :through => :reservations

  belongs_to :host, :class_name => 'User' :foreign_key => 'host_id'
  

end
