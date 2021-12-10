require 'rails_helper'

RSpec.feature "Log out page", type: :feature do

test_user = User.new(username: "Mr Rails", email: "railsisthebest@hotmail.co.uk", password: "helloworld")
test_user.save


scenario "A user can log out of their account" do

    visit "/login"
    fill_in "username", with: "Mr Rails"
    fill_in "password", with: "helloworld"
    click_button "Log in"

    click_link "Log out"

    expect(page).to have_content("Log in")
  
  end

end
