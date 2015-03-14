require "Capybara"
require "Capybara/cucumber"
require "rspec"

include RSpec::Matchers

Capybara.configure do |capybara|

  Capybara.register_driver :selenium_ff do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

end
