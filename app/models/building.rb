class Building < ActiveRecord::Base
  validates :address, presence: true
  validates :city, presence: true, format: { with: /[a-zA-Z]/, on: :create }
  validates :state, presence: true, format: { with: /(AL|AK|AR|CA|CO|CT|DE|FL|GA|HI|ID|IL|IN|IA|KS|KY|LA|ME|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|OH|OK|OR|PA|RI|SC|SD|TN|TX|UT|VT|VA|WA|WV|WI|WY)/, on: :create}
  validates :zip, presence: true, format: { with: /\A([0-9]{5}-[0-9]{4})|[0-9]{5}\z/, on: :create }
end
