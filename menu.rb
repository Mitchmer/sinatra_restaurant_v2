require 'sinatra/base'

ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_s
require_relative 'routes'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require './models/menu';

class Items < Sinatra::Base
  set :views, Proc.new { File.join(root, "views") }
  set :root, File.dirname(__FILE__)
  enable :sessions
  use Rack::MethodOverride
end

