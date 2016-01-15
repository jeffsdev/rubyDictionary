require('sinatra')
require('sinatra/reloader')
require('./lib/word')
also_reload('./lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/add_word') do
  erb(:word_form)
end

post('/') do
  term = params.fetch('term')
  Word.new({:term => term}).save()
  @words = Word.all()
  erb(:success)
end
