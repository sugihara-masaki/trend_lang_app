source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.2.0'
gem 'pg'

gem 'activerecord-import'

gem 'slim-rails', github: 'ericboehs/slim-rails'
gem 'therubyracer', platforms: :ruby
gem 'draper'
gem 'sass-rails'
gem "less-rails"
gem 'twitter-bootstrap-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'chartkick'
gem 'groupdate'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'terminal-notifier-guard'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'
  gem 'database_cleaner'
  gem 'rubocop', require: false
end

group :test, :darwin do
  gem 'rb-fsevent'
end
