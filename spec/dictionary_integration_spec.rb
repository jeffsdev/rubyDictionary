require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Word path', {:type => :feature}) do
  it('will visit the index page and follow link to /add_word page') do
    visit('/')
    click_link('Add Word to Dictionary')
    expect(page).to have_content("Add a Word to the Dictionary")
  end
end
