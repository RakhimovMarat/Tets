require "rubygems"
require "sinatra"
require "sequel"

DB = Sequel.connect('sqlite://test.db')







get '/' do
  'Test!'
end
