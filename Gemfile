source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '6.1.4.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.4.0'
gem 'sass-rails', '~> 6.0'
gem 'uglifier', '>= 1.3.0'
gem 'devise'
gem 'doorkeeper'
gem 'jsonapi-resources'
gem 'rack-cors'
gem 'dotenv-rails'
gem 'bootstrap', '~> 4.6.0', '< 5'
gem 'jquery-rails'
gem 'sprockets', '~> 3.7.2', '< 4.0'
gem 'nokogiri', '>= 1.11.0.rc4'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.8'
  gem 'bullet'
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'coderay'
  gem 'rubocop'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rspec_junit_formatter'
end

group :production do
  gem 'rack-attack'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
