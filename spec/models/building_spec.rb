require 'spec_helper'

describe Building do
  it { should have_valid(:address).when('200 Dane Street') }
  it { should_not have_valid(:address).when(nil, '') }

  it { should have_valid(:city).when('MA') }
  it { should_not have_valid(:city).when(nil, '', 123) }

  it { should have_valid(:state).when('WY') }
  it { should_not have_valid(:state).when(nil, '', "BC", 123) }

  it { should have_valid(:zip).when(62445) }
  it { should_not have_valid(:zip).when(nil, '') }

  it { should belong_to :owner }
end
