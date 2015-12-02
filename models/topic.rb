class Topic < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :forums
  belongs_to :user
end