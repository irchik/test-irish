require 'Capybara'
require 'Capybara/cucumber'
require 'rspec'

Capybara.configure do |_|
  Capybara.register_driver :remote_browser do |app|
    Capybara::Selenium::Driver.new(app, :browser => :ie)
  end
end