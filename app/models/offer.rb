class Offer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true 
end
