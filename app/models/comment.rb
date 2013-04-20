class Comment < ActiveRecord::Base
  attr_accessible :body, :name, :event_id

  validates_presence_of :name, :within => 2..20
  validates_presence_of :body

  belongs_to :event
end
