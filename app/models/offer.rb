class Offer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :reservations, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_address,
    against: [ :title, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
