require 'rails_helper'

RSpec.feature "Sign up page", type: :feature do
  scenario "Can sign up and have an account" do
    visit "/users/new"
    fill_in "Username", with: "Mr Rails"
    fill_in "Email", with: "railsisthebest@hotmail.co.uk"
    fill_in "Password", with: "helloworld"
    click_button "Create Account"

    expect(page).to have_content("Mr Rails")
  
  end
end
