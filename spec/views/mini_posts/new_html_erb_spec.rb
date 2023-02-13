require 'rails_helper'

RSpec.describe "New mini post page", type: :system do
  it 'shows home link' do
    visit new_mini_post_path
    expect(page).to have_link("Home")
  end

  it 'shows Content title' do
    visit new_mini_post_path
    expect(page).to have_content("Content")
  end

  it 'shows submit button' do
    visit new_mini_post_path
    expect(page).to have_button("Create Mini post")
  end
end
