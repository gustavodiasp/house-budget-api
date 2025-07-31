source "https://rubygems.org"

gem "rails", "~> 8.0.2"
#Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem 'solid_cable', '~> 3.0'
gem 'solid_cache', '~> 1.0'
gem 'solid_queue', '~> 1.1'
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "sidekiq"

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
  gem "rubocop", require: false
  gem "rubocop-rails-omakase", require: false
  gem 'brakeman', '~> 6.1', require: false
end

group :development, :test do
  gem 'brakeman', '~> 6.1', require: false
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 8.0.1' # Test framework
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3' # Instantiate and persist models
  gem 'rubocop', require: false
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'database_cleaner', '~> 2.0' # Strategies for cleaning up the database in between test runs
  gem 'shoulda-matchers', '~> 6.2' # Custom expectations for rails helpers/macros
  gem 'simplecov', '~> 0.22.0', require: false # Generate coverage reports for tests
  gem 'webmock', '~> 3.21' # Stub and set expectations on http requests
end
