source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.8', '>= 7.0.8.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'aasm', '~> 5.5'
gem 'bcrypt', '~> 3.1'
gem 'dotenv-rails', '~> 2.8'
gem 'faraday', '~> 2.8'
gem 'jwt', '~> 2.8'
gem 'money', '~> 6.19'
gem 'pg', '~> 1.5'
gem 'puma', '~> 5.0'
gem 'rack-cors', '~> 2.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'byebug', '~> 11.1'
  gem 'database_cleaner', '~> 2.0'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.4'
  gem 'ffaker', '~> 2.21'
  gem 'rspec', '~> 3.13'
  gem 'shoulda-matchers', '~> 5.3'
  gem 'timecop', '~> 0.9.8'
end
