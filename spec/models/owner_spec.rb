require 'spec_helper'

describe Owner do
  it { should have_valid(:email).when('johnkeats@gmail.com') }
  it { should_not have_valid(:email).when('edgarallenpoe@.com') }

  it { should have_valid(:first_name).when('Rudyard') }
  it { should_not have_valid(:first_name).when("") }
  it { should_not have_valid(:first_name).when(123) }


  it { should have_valid(:last_name).when('Yeats')}
  it { should_not have_valid(:last_name).when(123)}

end
