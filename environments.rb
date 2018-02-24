configure :development do
  set :database, 'sqlite3:restaurant_v2_dev.db'
  set :show_exceptions, true
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/restaurant_v2')

  ActiveRecord::Base.establish_connection(
    :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end