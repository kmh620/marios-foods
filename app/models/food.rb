class Food < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :price, :presence => true
  validates :origin, :presence => true

  scope :three_recent, -> {order(created_at: :desc).limit(3)}
  # scope :most_reviews, -> {(
  #   select("foods.id, foods.name, foods.price, foods.origin, count(reviews.id) as reviews_count")
  #   .joins(:reviews)
  #   .group("foods.id")
  #   .order("reviews_count DESC")
  #   .limit(1)
  #   )}

end
