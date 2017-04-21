require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show') do
  @first_input = params.fetch('first')
  @second_input = params.fetch('second')
  @result = [@first_input, @second_input].anagram()
  erb(:show)
end
