require 'spec_helper'

feature 'real estate associate adds building owner', %q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
  } do

# I must specify a first name, last name, and email address
# I can optionally specify a company name
# If I do not specify the required information, I am presented with errors
# If I specify the required information,
# the owner is recorded and I am redirected to enter another new owner

  scenario 'associate adds a building owner with valid attributes' do
    owner1 = FactoryGirl.build(:owner)
    count = Owner.count
    visit new_owner_path
    owner_new_helper(owner1)
    click_on 'Add Owner'

    expect(Owner.count).to eq(count + 1)
  end

  scenario 'associate adds a building owner with invalid attributes' do
    owner2 = FactoryGirl.build(:owner)
    count = Owner.count
    visit new_owner_path
    owner_new_helper(owner2)
    fill_in 'Email', with: ""
    click_on 'Add Owner'

    expect(Owner.count).to eq(count)
  end

  scenario 'associate adds two building owners in a row without having to switch pages' do
    owner1 = FactoryGirl.build(:owner)
    owner2 = FactoryGirl.build(:owner)
    count = Owner.count
    visit new_owner_path
    owner_new_helper(owner1)
    click_on 'Add Owner'
    owner_new_helper(owner2)
    click_on 'Add Owner'

    expect(Owner.count).to eq(count + 2)

  end

end

