source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.7"

gem "rails", "~> 5.2"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.12"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"

gem "twitter-bootstrap-rails"
gem "jquery-rails"

gem "devise"
gem "devise-bootstrapped"

gem "acts_as_commentable"

gem "emoji"
gem "escape_utils"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", "~> 3.7"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "standard", "~> 0.4.6"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
