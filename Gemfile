source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ruby "3.2.2"
gem "rails", "~> 7.0.5"
gem "sassc-rails"
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "puma", "~> 5.0"
gem "bootsnap", require: false
# gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "rails-controller-testing"
  gem "minitest"
  gem "minitest-reporters"
  gem "guard"
  gem "guard-minitest"
end

group :production do
  gem "pg"
end