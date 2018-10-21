class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :accountname, presence: true
  validates :profile, presence: true
  validates :birthday, presence: true

  has_secure_password

  has_many :topics
end
