require 'spec_helper'

feature 'enter_names' do
  scenario 'visiting web page' do
    sign_in_and_play
    expect(page).to have_text("Truffles are yuuuuuu ready!?")
    expect(page).to have_text("Fluffkins are yuuuuuu ready!?")
    expect(page).to have_text("Let Battle Commence!")
  end
end

feature 'see the player points' do
  scenario 'when names page is loaded' do
    sign_in_and_play
    expect(page).to have_text("Fluffkins has 10 points!")
  end
end

feature 'attack player' do
  scenario 'get confirmation when player has been attacked' do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to have_text("Truffles has attacked Fluffkins!")
  end
end
