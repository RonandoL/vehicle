require('sinatra')
require('sinatra/reloader')
require('./lib/vehicle')     # when copy pasting, change file name
also_reload('lib/**/*.rb')

get('/') do
  # @xxxxx = xxxxx.all()
  erb(:index)
end

post('/results') do

end
