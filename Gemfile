source 'https://rubygems.org'

gem 'rails', '~> 8.0.2'
gem 'sqlite3', '~> 2.1'
gem 'puma', '>= 5.0'
gem 'tzinfo-data', platforms: %i[ windows jruby ]
gem 'solid_cache'
gem 'solid_queue'
gem 'solid_cable'
gem 'bootsnap', require: false
gem 'kamal', require: false
gem 'thruster', require: false

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'rubocop', require: false
  gem 'rubocop-rails-omakase', require: false
  gem 'brakeman', require: false
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.0'
  gem 'factory_bot_rails'
end
