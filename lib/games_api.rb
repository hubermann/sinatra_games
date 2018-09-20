#librerias
require 'json'
require 'sinatra/base'
require 'dm-core'
require 'dm-sqlite-adapter'
require 'dm-migrations'

#classes
require 'games_api/app'
require 'games_api/mines'
require 'games_api/minate'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/boards.db")

class Board
  include DataMapper::Resource
  property :id, Serial
  property :created_at, Date
  property :body, String
end

DataMapper.finalize
Board.auto_upgrade!
