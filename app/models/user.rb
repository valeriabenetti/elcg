class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true # password_confirmation attr
  validates_length_of :password, in: 6..20, on: :create

  has_secure_password

  has_many :favorites, dependent: :destroy
  has_many :tests, through: :favorites
end
