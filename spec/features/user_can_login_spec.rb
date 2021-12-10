require 'rails_helper'

RSpec.feature "Log in page", type: :feature do

test_user = User.new(username: "Mr Rails", email: "railsisthebest@hotmail.co.uk", password: "helloworld")
test_user.save

scenario "A user can log in to their account" do

    visit "/login"
    fill_in "username", with: "Mr Rails"
    fill_in "password", with: "helloworld"
    click_button "Log in"

    expect(page).to have_content("Mr Rails")
  
  end

end

  