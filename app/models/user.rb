class User < ApplicationRecord
  # include Rails.application.routes.url_helpers

  has_many :ratings
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
