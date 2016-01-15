require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
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

# gets add_definition page, that contains a form
# to add a definition to the chosen word.
get('/word/:id/add_definition') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition_form)
end

# form on the add_definition page will post to /word/(word id) page
# upon pressing submit. Then user will be taken to
# success2 page, with a link back to the word's page,
# where it will show the word and it's definition.
post('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  meaning = params.fetch('meaning')
  @definitions = Definition.new({:meaning => meaning})
  @definitions.save()
  @word.definitions().push(@definitions)
  @definitions = Definition.all()
  erb(:success2)
end











#
