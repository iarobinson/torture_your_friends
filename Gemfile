source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'aws-sdk-s3', require: false
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.4.1'
gem 'coffee-rails', '~> 5.0.0'
gem 'devise'
gem 'figaro'
gem 'friendly_id'
gem "image_processing", "~> 1.0"
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'material_icons'
gem 'mini_magick', '~> 4.8'
gem 'pg'
gem 'puma', '~> 4.3'
gem 'rails', '6.0.0'
gem 'sass-rails', '~> 5.0'
gem 'sendgrid-ruby'
gem 'sprockets-rails', require: 'sprockets/railtie'
gem 'twilio-ruby'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 5.x'
gem 'turbolinks', '~> 5'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
