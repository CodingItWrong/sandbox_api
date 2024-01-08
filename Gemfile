source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "7.1.2"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 6.4.2"
gem "sass-rails", "~> 6.0"
gem "uglifier", ">= 1.3.0"
gem "devise"
gem "doorkeeper"
gem "jsonapi-resources"
gem "rack-cors"
gem "dotenv-rails"
gem "bootstrap", "~> 4.6.0", "< 5"
gem "jquery-rails"
gem "sprockets"
gem "nokogiri"

group :development do
  gem "listen", ">= 3.0.5", "< 3.9"
end

group :development, :test do
  gem "pry-rails"
  gem "rspec-rails"
  gem "coderay"
  gem "standard"
end

group :test do
  gem "factory_bot_rails"
  gem "rspec_junit_formatter"
end

group :production do
  gem "rack-attack"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
