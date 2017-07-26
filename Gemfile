source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bootstrap-sass", "3.3.7"
gem "rails", "~> 5.1.2"
gem "bcrypt",         "3.1.11"
gem "config"

gem "jquery-rails", "4.3.1"
gem "faker",          "1.7.3"
gem "sqlite3"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "rails-controller-testing"
gem "uglifier", ">= 1.3.0"
gem "will_paginate",           "3.1.5"
gem "bootstrap-will_paginate", "1.0.0"
gem "pry", "~> 0.10.3"

gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "rubocop", "~> 0.49.1", require: false

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"

  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
