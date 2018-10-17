require 'rails_helper'

describe 'User goes to index and create a new account' do
  it "user create an account"
    visit users_path

    click_on(".Create A New Account")

    expect(current_path).to eq(new_user)

    user_name = "Maite Delgado"
    user_email = "selo_delgado@elchiguirebipolar.com"
    user_password

    within("new_user") do
      fill_in


  end
end
