class Offer < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true 
end
