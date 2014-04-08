class Owner < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  has_many :buildings, dependent: :nullify

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :email, presence: true, format: { with: EMAIL_REGEX }
end
