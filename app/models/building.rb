class Building < ActiveRecord::Base
  STATES = %w(AL AK AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)

  belongs_to :owner

  validates :address, presence: true
  validates :city, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :state, presence: true, inclusion: { in: STATES }
  validates :zip, presence: true
end
