module FormHelper

  def building_new_helper(valid_attrs)
    fill_in 'Address', with: valid_attrs.address
    fill_in 'City', with: valid_attrs.city
    select 'CT', from: "building_state"
    fill_in 'Zip', with: valid_attrs.zip
    fill_in 'Description', with: valid_attrs.description
  end

  def owner_new_helper(valid_attrs)
    fill_in 'First name', with: valid_attrs.first_name
    fill_in 'Last name', with: valid_attrs.last_name
    fill_in 'Email', with: valid_attrs.email
    fill_in 'Company', with: valid_attrs.company
  end

end
