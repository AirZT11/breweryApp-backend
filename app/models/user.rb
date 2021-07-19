class User < ApplicationRecord
  # include Rails.application.routes.url_helpers
  has_secure_password
  has_many :ratings
  
  validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :username, presence: true
  validates :password, presence: {on: :create}, confirmation: {case_sensitive: true}, length: {minimum: 6}
  validates :password_confirmation, presence: true

end
