require 'spec_helper'

feature 'enter_names' do
  scenario 'visiting web page' do
    visit('/')
    fill_in :name1, :with => "Tom"
    fill_in :name2, :with => "Anna"
    click_button "Do a dance"
    expect(page).to have_text("Tom are yuuuuuu ready!?")
    expect(page).to have_text("Anna are yuuuuuu ready!?")
    expect(page).to have_text("Let Battle Commence!")
  end
end

feature 'see the player points' do
  scenario 'when names page is loaded' do
    visit('/')
    fill_in :name1, :with => "Tom"
    fill_in :name2, :with => "Anna"
    click_button "Do a dance"
    expect(page).to have_text("Anna has 10 points!")
  end
end
