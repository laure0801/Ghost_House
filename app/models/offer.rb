class Offer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :reservations, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
end
