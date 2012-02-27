source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'activerecord-jdbcsqlite3-adapter'
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'
gem 'cancan'

gem 'jruby-openssl'
gem 'bootstrap-sass', '~> 2.0.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyrhino'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# the javascript engine for execjs gem
platforms :jruby do
  group :assets do
    gem 'therubyrhino'
  end
end


gem "rspec-rails", ">= 2.8.1", :group => [:development, :test]
gem "factory_girl_rails", ">= 1.6.0", :group => :test
gem "cucumber-rails", ">= 1.2.1", :group => :test
gem "capybara", ">= 1.1.2", :group => :test
gem "database_cleaner", ">= 0.7.1", :group => :test
gem "launchy", ">= 2.0.5", :group => :test
gem "devise", ">= 2.0.0"