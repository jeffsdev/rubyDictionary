require('sinatra')
require('sinatra/reloader')
require('./lib/word')
also_reload('./lib/**/*.rb')

# gets root index page
get('/') do
  @words = Word.all()
  erb(:index)
end

# gets add_word page, that contains a form
# to add words to the dictionary.
get('/add_word') do
  erb(:word_form)
end

# form on the add_word page will post to root index page
# upon pressing submit. Then user will be taken to
# success page, with a link back to root index.
post('/') do
  term = params.fetch('term')
  Word.new({:term => term}).save()
  @words = Word.all()
  erb(:success)
end

# gets the word/(index of word) page, which contains
# the name of the word itself, along with definitions,
# if there are any.  Also includes a link to the
# definitions form page, where a user can add a definition
# for this particular word.
get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end
