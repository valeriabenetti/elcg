class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true # password_confirmation attr
  validates_length_of :password, in: 6..20, on: :create

  has_secure_password

  has_many :favorites
end
