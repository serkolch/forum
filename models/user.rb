class User < ActiveRecord::Base
  has_many :visits, class_name: "Visit", foreign_key: "visited_id" 
end