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

  it('will fill in the add-word form and then take user to success page') do
    visit('/add_word')
    fill_in('term', :with => 'Ruby')
    click_button('Submit')
    expect(page).to have_content("Dictionary")
  end
end
