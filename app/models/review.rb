class Review < ActiveRecord::Base
  belongs_to :food
  
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :rating, :presence => true


end
