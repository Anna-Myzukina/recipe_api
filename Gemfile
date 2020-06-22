source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'database_cleaner'
gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'knock', github: 'psantos10/knock', branch: 'master'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors', :require => 'rack/cors'
gem 'active_model_serializers'
gem 'simple_command'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'rspec-rails', '~> 3.6'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
