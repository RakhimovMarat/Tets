require "rubygems"
require "sinatra"
require "sequel"

# Подключение к существующей БД через переменную DB
DB = Sequel.connect('sqlite://test.db')

# Создание сущностей и связей между ними
class User < Sequel::Model
  many_to_one :template
  one_to_many :operations
end

class Template < Sequel::Model
  one_to_many :users
end

class Product < Sequel::Model

end

class Operation < Sequel::Model
  many_to_one :user
end





#get '/users' do
#  users = DB[:users]
#  return users.all.to_json
#end

#get '/templates' do
#  templates = DB[:templates]
#  return templates.all.to_json
#end
