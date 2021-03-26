require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
  ) 
  #This file is requiring the gems in our Gemfile and giving our program access to them. 
  #We're using the establish_connection method from ActiveRecord::Base to connect to our artists database, 
  #which will be created in the migration via SQLite3 (the adapter).


require_relative "../artist.rb"
