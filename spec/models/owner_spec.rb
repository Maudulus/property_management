require 'spec_helper'

describe Owner do
  it { should have_valid(:email).when('johnkeats@gmail.com') }
  it { should_not have_valid(:email).when(nil, '', 'edgarallenpoe@.com') }

  it { should have_valid(:first_name).when('Rudyard') }
  it { should_not have_valid(:first_name).when(nil, "", 123) }

  it { should have_valid(:last_name).when('Yeats')}
  it { should_not have_valid(:last_name).when(nil, '', 123)}

  it { should have_many(:buildings).dependent(:nullify) }
end
