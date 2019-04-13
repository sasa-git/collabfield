require "rails_helper"

RSpec.feature "Sign up", :type => :feature do
  let(:user) { build(:user) }

  scenario 'user navigates to sign up page and successfuly sign up', js: false do
    visit root_path
    find('li a', text: 'Signup').click
    fill_in 'user[name]', with: user.name
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    fill_in 'user[password_confirmation]', with: user.password_confirmation
    find('.sign-up-button').click
    expect(page).to have_selector('.dropdown-item')
  end
end