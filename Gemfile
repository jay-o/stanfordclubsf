source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails',        '3.2.13'
gem 'active_attr'
gem 'annotate'
gem 'bcrypt-ruby',  '3.0.1'
gem "cancan",       '1.6.10'
gem 'geocoder'
gem 'jquery-ui-rails'
gem 'mailgun-ruby'
gem 'simple_form',  '2.1.0'
gem 'thin'

group :test do
  gem 'capybara',   '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl',      '1.0.3'
  gem 'factory_girl_rails', '4.1.0'
end

group :development, :test do
  gem 'sqlite3',      '1.3.5'
  gem 'rspec-rails',  '2.11.0'
  gem 'guard-rspec',  '1.2.1'
  gem 'faker',        '1.0.1'
end

group :development do
  gem 'better_errors', '1.1.0'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'letter_opener'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier',     '1.2.3'
  gem "therubyracer"
  gem "less-rails"
  gem "twitter-bootstrap-rails", '2.2.8'
end

gem 'jquery-rails', '2.0.2'


group :production do
  gem 'pg', '0.12.2'
end
