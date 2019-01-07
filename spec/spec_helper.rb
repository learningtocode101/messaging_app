ENV['RACK_ENV'] = 'test'
# require './app'
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'features/web_helpers'
require 'rspec'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

Capybara.app = Bounce

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
