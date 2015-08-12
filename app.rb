require('sinatra')
require('sinatra/reloader')
require('./lib/vehicle')     # when copy pasting, change file name
also_reload('lib/**/*.rb')

get('/') do
  # @xxxxx = xxxxx.all()
  erb(:index)
end

get('/vehicles') do
  erb(:see_vehicles)
end

get('/add_vehicle') do
   erb(:add_vehicle)
end

    get('/results') do
      erb(:results)
    end

get('/vehicle_page') do
   erb(:vehicle_page)
end
