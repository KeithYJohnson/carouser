class Comment < ActiveRecord::Base
  attr_accessible :body, :event_id, :name

  validates_presence_of :name, :within => 2..20
  validates_presence_of :body

  belongs_to :event
end
