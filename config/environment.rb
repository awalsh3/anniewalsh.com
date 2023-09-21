# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# config/environment.rb
Rails.application.configure do
  config.api_only = true
end
