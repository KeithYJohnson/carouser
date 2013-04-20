class Comment < ActiveRecord::Base
  attr_accessible :body, :event_id, :name

  belongs_to :event
end
