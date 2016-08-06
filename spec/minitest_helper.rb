require 'minitest/autorun'
require 'minitest/hooks/default'
require "minitest/reporters"
require 'rack/test'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# class Minitest::HooksSpec
#
#   include Capybara::DSL
#   include Rack::Test::Methods
#   Capybara.app = App
#
#   def app
#     App
#   end
#
#   around(:all) do |&block|
#     DB.transaction(rollback: :always){super(&block)}
#   end
#
#   around do |&block|
#     DB.transaction(rollback: :always, savepoint: true, auto_savepoint: true){super(&block)}
#   end
#
#   if defined?(Capybara)
#     after do
#       Capybara.reset_sessions!
#       Capybara.use_default_driver
#     end
#   end
# end


