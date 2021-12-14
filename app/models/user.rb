class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :rating, numericality:  { in: 1..5 }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers
end
