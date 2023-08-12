# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

DEVISE_JWT_SECRET_KEY = ENV["DEVISE_JWT_SECRET_KEY"]
