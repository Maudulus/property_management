class Owner < ActiveRecord::Base
  has_many :buildings, dependent: :destroy

  validates :first_name, presence: true, format: { with: /[a-zA-Z]/, on: :create }
  validates :last_name, presence: true, format: { with: /[a-zA-Z]/, on: :create }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
