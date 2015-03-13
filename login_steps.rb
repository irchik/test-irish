require 'spec_helper'

Given(/^Log in page is opened$/) do
  LoginPage.new.open
end

When(/^I fill in log in form with$/) do |email, password|
  LoginPage.new.fill_form(email, password)
end

When(/^I click Log in button$/) do
  LoginPage.new.submit_form
end

Then(/^I should see (.+) title$/) do |page_title|
  expect(HomePage.title).to be(page_title)
end