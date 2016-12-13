	# modified:   Gemfile
	# modified:   Gemfile.lock
	# modified:   app/controllers/static.rb
	# modified:   app/views/layouts/application.erb
	# modified:   app/views/static/index.erb
	# modified:   config/environments/init.rb
	# modified:   public/css/application.css
	# modified:   public/js/application.js

#  list to do a web pp
#  	Gemfile has :
#  	web app require Sinatra as Database
#  	source 'https://rubygems.org'
# # Ruby Version
# # ruby "2.2.1"

# # Adding Sinatra Drivers
# gem 'sinatra'
# gem 'sinatra-contrib'

# # Adding thin gem as advised
# gem 'thin'

# # Adding ActiveRecord and Database Components
# gem 'activerecord'
# gem 'activesupport'
# gem 'sinatra-activerecord'

# # Adding Database elements
# gem 'pg'
# gem 'byebug'
# # gem 'SecureRandom'
# # Adding rake for management
# gem 'rake'

# # Adding rspec for running unit testing
# gem 'rspec'

# group :development, :test do
# 	# Adding shotgun for local web hosting
# 	gem 'shotgun'
# end

# group :production do
# 	# Heroku
# 	# ==================
# 	gem 'rails_12factor' # Heroku Gem Supports
# 	gem 'puma' # Using puma for
# end
# --------------------------------------


# make sure the config has :
# require ::File.expand_path('../config/environments/init', __FILE__)
# run Sinatra::Application

# ---------------------
# and init.rb file has \u will find it in..config-environments-init
# # Specify gemfile Location and general variables
# ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

# # Perform requiring gem that we need
# ######################################################################
# 	# basic
# require 'rubygems'
# require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
# require 'pathname'
# require 'byebug'
# # require 'SecureRandom'
# 	# database
# require 'pg'
# require 'active_record'
# require 'logger'

# 	# sinatra
# require 'sinatra'
# require "sinatra/reloader" if development?

# 	# embedded ruby
# require 'erb'
# require 'uri'
# ######################################################################


# # System Setup
# ######################################################################
# # Setup app root folder and name
# APP_ROOT = Pathname.new(File.expand_path('../../../', __FILE__))
# APP_NAME = APP_ROOT.basename.to_s

# # Setup sessions, logging and dump_errors
# use Rack::Session::Cookie, expire_after: ENV['SESSION_EXPIRE'] || 2592000, # seconds
#                            secret: ENV['SESSION_SECRET'] || 'this is a secret shhhhh',
#                            logging: true,
#                            dump_errors: false,
#                            app_file: __FILE__

# # Setup assets folder
# set :public_folder, 'public'

# # Setup Models (M) and its database
# require APP_ROOT.join('config', 'database')

# # Setup views (V)
# set :views, File.join(APP_ROOT, "app", "views")
# set :erb, layout: :'layouts/application'

# # Setup helper (H)
# Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

# # Setup controller (C)
# Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
# ######################################################################
# # $ ps aux | grep 'ruby'
# # shotgun config.ru
# # gem install SecureRandom
# # $ kill -9 5407
#  #$ kill -9 4-82
# #$ bundle exec rake server

