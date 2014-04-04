module FormHelper

  def building_new_helper(valid_attrs)
    fill_in 'Address', with: valid_attrs.address
    fill_in 'City', with: valid_attrs.city
    fill_in 'State', with: valid_attrs.state
    fill_in 'Zip', with: valid_attrs.zip
    fill_in 'Description', with: valid_attrs.description
  end

end
