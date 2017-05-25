<<<<<<< HEAD
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
=======
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716

require 'bundler/setup' # Set up gems listed in the Gemfile.
