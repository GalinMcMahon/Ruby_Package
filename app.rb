require('sinatra')
require('sinatra/reloader')
require('./lib/package')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/cost') do
  @weight = params.fetch('weight')
  @package = Package.new(params.fetch('height'), params.fetch('length'), params.fetch('width'))
  @cost = @package.cost_to_ship(params.fetch('weight'))
  erb(:cost)
end
