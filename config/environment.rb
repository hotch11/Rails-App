# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
 
  config.gem "mislav-will_paginate", :lib => "will_paginate", :source => "http://gems.github.com"

  config.time_zone = 'UTC'

  config.gem 'paperclip', :source => 'http://rubygems.org'

end




