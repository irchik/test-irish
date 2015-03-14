require 'Capybara'
require 'Capybara/cucumber'
require 'rspec'

Capybara.configure do |_|
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

end
