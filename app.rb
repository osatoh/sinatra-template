require 'bundler'
Bundler.require

enable :sessions

get '/' do
  return erb :index
end