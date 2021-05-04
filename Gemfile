source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
# Rails Default Gems
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem "binding_of_caller"

# Essential Gems for Project
gem 'better_errors', '~> 2.9', '>= 2.9.1' # for debugging
gem 'awesome_print', '~> 1.9', '>= 1.9.2' # for rails console model display
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1' # for boostrap styling / framework
gem 'jquery-rails'
gem 'sassc-rails', '>= 2.1.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.7' # for font awesome
gem 'simple_form', '~> 5.1'
gem 'devise', '~> 4.7', '>= 4.7.3' # for authentication
gem 'pundit', '~> 2.1' # for authorization
gem 'friendly_id', '~> 5.4', '>= 5.4.2' # for search engine optimization
gem 'carrierwave', '~> 2.2', '>= 2.2.1' # for image upload
gem 'fog', '~> 2.2' # for cloud upload of image
gem 'mini_magick', '~> 4.11'# carrierwave dependent
gem 'searchkick', '~> 4.4', '>= 4.4.4' # for search function
gem 'will_paginate', '~> 3.3' # for pagination
gem 'bootstrap-will_paginate', '~> 1.0' # for bootstrap-style pagination
gem 'fog-aws', '~> 3.10'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
