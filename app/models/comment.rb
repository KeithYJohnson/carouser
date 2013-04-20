class Comment < ActiveRecord::Base
  attr_accessible :body, :name, :event_id

  validates_presence_of :name, :within => 2..20, :message => "field can't be empty"
  validates_presence_of :body, :message => "field can't be empty"

  belongs_to :event
end
