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

  def generate_password_token!
  self.reset_password_token = generate_token
  self.reset_password_sent_at = Time.now.utc
  save!
  end

  def password_token_valid?
    (self.reset_password_sent_at + 4.hours) > Time.now.utc
  end

  def reset_password!(password)
    self.reset_password_token = nil
    self.password = password
    save!
  end

  private

  def generate_token
    SecureRandom.hex(10)
  end
end
