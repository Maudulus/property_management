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
