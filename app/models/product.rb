class Product < ApplicationRecord
  has_many :reviews

  def review_average
    self.reviews.average(:rate).round if self.reviews.present?
  end
  
end
