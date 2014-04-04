FactoryGirl.define do

  factory :building do
    address '190 Congress Street'
    city 'Boston'
    state 'MA'
    zip '02119'
    description 'Large building with 3000 rooms.'
  end

  factory :owner do
    first_name 'Seamus'
    last_name 'Heaney'
    email 'poems@gmail.com'
    company 'Dublin Dump Trucks'
  end

end

# I must specify a first name, last name, and email address
# I can optionally specify a company name
# If I do not specify the required information, I am presented with errors
# If I specify the required information,
# the owner is recorded and I am redirected to enter another new owner
