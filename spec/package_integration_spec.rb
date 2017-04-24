require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the Parcel path', {:type => :feature}) do
  it('processes 4 dimensions and returns package shipping cost') do
    visit('/')
    fill_in('height', :with => '4')
    fill_in('length', :with => '5')
    fill_in('width', :with => '6')
    fill_in('weight', :with => '6')
    click_button('Submit')
    expect(page).to have_content('12.5')
  end
end
