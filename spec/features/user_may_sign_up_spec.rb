require 'spec_helper'

feature "Guest may register as a user" do
  scenario "when they visit the homepage" do
    visit "/"

    fill_in "user_name", with: 'Carter'
    fill_in "user_email", with: 'carter@dbc.com'
    fill_in "user_password", with: 'dolphins'
    click_on "Register"

    expect(page).to have_content("Welcome Carter")
  end
end