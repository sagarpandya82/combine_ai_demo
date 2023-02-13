require 'rails_helper'

RSpec.describe "Landing page", type: :system do
  it 'shows home link' do
    visit root_path
    expect(page).to have_link("Home")
  end

  it 'shows Latest Users' do
    visit root_path
    expect(page).to have_content("Latest Users")
  end

  it 'shows Feed' do
    visit root_path
    expect(page).to have_content("Feed")
  end
end
