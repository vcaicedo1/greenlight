# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'aws-sdk-s3', '~> 1.88.1'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# BigBlueButton API wrapper.
gem 'bigbluebutton-api-ruby', git: 'https://github.com/mconf/bigbluebutton-api-ruby.git', branch: 'master'
# Authentication.
gem 'bn-ldap-authentication', '~> 0.1.4'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.7.2', require: false
# Front-end.
gem 'bootstrap', '~> 4.3.1'
# For limiting access based on user roles
gem 'cancancan', '~> 2.3.0'
gem 'coveralls', '~> 0.8.23', require: false
# Front-end.
gem 'font-awesome-sass', '~> 5.9.0'

gem 'google-cloud-storage', '~> 1.30.0'
# For detecting the users preferred language.
gem 'http_accept_language', '~> 2.1.1'
gem 'i18n-language-mapping', '~> 0.1.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11.2'
# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.4.0'
gem 'jquery-ui-rails', '~> 6.0.1'
gem 'local_time', '~> 2.1.0'
# Authentication.
gem 'net-ldap', '~> 0.17.0'
gem 'omniauth', '~> 1.9.1'
gem 'omniauth-bn-launcher', '~> 0.1.3'
gem 'omniauth-bn-office365', '~> 0.1.1'
gem 'omniauth-google-oauth2', '~> 0.7.0'
gem 'omniauth_openid_connect', '~> 0.3.5'
gem 'omniauth-twitter', '~> 1.4.0'
# Front-end.
gem 'pagy', '~> 3.11.0'
gem 'pluck_to_hash', '~> 1.0.2'
# Use Puma as the app server
gem 'puma', '~> 3.12.6'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.5'
gem 'random_password', '~> 0.1.1'
gem "recaptcha", '~> 5.7.0'
# Markdown parsing.
gem 'redcarpet', '~> 3.5.1'

gem 'remote_syslog_logger', '~> 1.0.4'
gem 'rubocop', '~> 1.10.0'
# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1.2'
gem 'sprockets', '~> 3.7.2'
gem 'sqlite3', '~> 1.3.6'
# Front-end.
gem 'tabler-rubygem', git: 'https://github.com/blindsidenetworks/tabler-rubygem.git', tag: '0.1.4.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2.1'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1.2021.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2.0'
#Display data like a tables on console
gem 'hirb', '~> 0.7.3'

group :production do
  gem 'sqlite3', '~> 1.3.6'
  # Use a postgres database in production.
  gem 'pg', '~> 0.18'
  gem 'sequel', '~> 5.41.0'
  # For a better logging library in production
  gem "lograge", '~> 0.11.2'
  # Use  for the cache store in production
  gem 'redis', '~> 4.2.5'
  gem 'hiredis', '~> 0.6.3'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1', platform: :mri
  # Environment configuration.
  gem 'dotenv-rails', '~> 2.7'
end

group :test do
  gem 'action-cable-testing', '~> 0.6'
  gem "factory_bot_rails", '~> 6.1'
  gem 'faker', '~> 2.16'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 3.7'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'webmock', '~> 3.11'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '~> 3.7'
  gem 'listen', '~> 3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0'
end