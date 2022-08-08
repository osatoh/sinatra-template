require 'bundler'
Bundler.require

enable :sessions

client = PG::connect(
  :host => "localhost",
  :user => ENV.fetch("USER", ""), # "#"の箇所はターミナルで whoami を実行した結果に置き換えてください
  :password => "",
  :dbname => "#", # "#"の箇所は自分で作成したデータベースの名前に置き換えてください
  )

get '/' do
  return erb :index
end