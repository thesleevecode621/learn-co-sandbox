require 'bundler'

Bundler.require
require "pry"
require 'nokogiri'
require 'open-uri'
require "openssl"


require_relative "./cli"
require_relative "./scraper"
#require_relative "./doctor"
require_relative "./hospital"