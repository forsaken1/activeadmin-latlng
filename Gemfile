source 'https://rubygems.org'

# Declare your gem's dependencies in activeadmin_latlng.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]
#

def rails_version
  ENV['RAILS_VERSION'] || '5.1'
end

gem 'rails', rails_version

group :development do
  gem 'listen'
  gem 'sqlite3'
end
