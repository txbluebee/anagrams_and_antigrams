require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagrams and antigrams', {:type => :feature}) do
  it('check if two words or sentences are anagrams') do
    visit('/')
    fill_in('first', :with => "true lady")
    fill_in('second', :with => "adultery")
    click_button('Anagrams?')
    expect(page).to have_content("They are anagrams.")
  end
end
