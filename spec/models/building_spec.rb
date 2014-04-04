require 'spec_helper'

describe Building do
  it { should have_valid(:address).when('200 Dane Street') }
  it { should_not have_valid(:address).when('') }

  it { should have_valid(:city).when('MA') }
  it { should_not have_valid(:city).when(123) }
  it { should_not have_valid(:city).when("") }

  it { should have_valid(:state).when('WY') }
  it { should_not have_valid(:state).when("BC") }
  it { should_not have_valid(:state).when(123) }

  it { should have_valid(:zip).when(62445) }
  it { should_not have_valid(:zip).when(1234)}

end

  # t.string   "address",     null: false
  #   t.string   "city",        null: false
  #   t.string   "state",       null: false
  #   t.integer  "zip",         null: false
  #   t.text     "description"
