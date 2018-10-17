require 'rails_helper'

describe 'User goes to index and create a new account' do
  it "user create an account" do
    visit users_path

    click_on ".Create A New Account"

    expect(current_path).to eq(new_user)

    user_name = "Maite Delgado"
    user_email = "selo_delgado@elchiguirebipolar.com"
    user_password = "1q2w3e4r"

    within("new_user") do
      fill_in 'user[name]', with: user_name
      fill_in 'user[email]', with: user_email
      fill_in 'user[password]', with: user_password
      click_on 'Create User'
    end

    user = User.last
    expect(user.name).to have_content(user.name)
    expect(user.email).to have_content(user_email)

  end
end
