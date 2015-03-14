#require 'spec_helper'
require 'rspec'

`require 'selenium-webdrive`r'
require_relative '../pages/login_page'
require_relative '../pages/home_page'

Given(/^Log In page is opened$/)
 LoginPage.new.open
end
When(/^ I fill in log in form with$/) do |email, password|
  LoginPage.new.fill_form(email,password)
end

When(/^I click Log In button$)
  LoginPage.new.submit_form
end

Then(/^I should see title$/) do |page_title|
 expect(HomePage.title).to be(page_title)
end
