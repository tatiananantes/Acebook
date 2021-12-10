require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    test_user = User.new(username: "Mr Rails", email: "railsisthebest@hotmail.co.uk", password: "helloworld")
    test_user.save
    visit "/login"
    fill_in "username", with: "Mr Rails"
    fill_in "password", with: "helloworld"
    click_button "Log in"
    visit "/posts"
    click_link "New post"
    # fill_in "User", with: "Mr Rails"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content
    
  end
end
