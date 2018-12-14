class Review < ActiveRecord::Base
  belongs_to :food
  validates :name, :presence => true
  validates :content_body, :presence => true
  validates :rating, :presence => true
end
