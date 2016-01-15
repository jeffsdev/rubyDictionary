require('sinatra')
require('sinatra/reloader')
require('./app')

get('/') do
  erb(:index)
end

get('/add_word') do
  erb(:word_form)
end
