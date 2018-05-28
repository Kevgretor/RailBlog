source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'

gem 'bootstrap', '~> 4.1.1'

gem 'jquery-rails'

gem 'puma'

gem 'sass-rails'

gem 'uglifier'

gem 'coffee-rails'

gem 'turbolinks'

gem 'jbuilder'

gem 'json'
gem 'pg'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'sqlite3'

  gem 'awesome_print'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
