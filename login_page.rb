require_relative '../pages/web_page'
require_relative '../pages/home_page'
require 'capybara/rspec'


class LoginPage
  include Capybara::DSL

  def visit_page
    visit 'http://howitzer.strongqa.com/users/sign_in'
    self
  end

  def fill_form(email,password)
    fill_in 'user_email', with: email
    fill_in 'user_password', with: password
    end

  def submit_form
    click_button 'Log in'
  end
end

