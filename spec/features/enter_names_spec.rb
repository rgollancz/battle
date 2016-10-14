require 'spec_helper'
require './lib/player'

feature 'enter_names' do
  scenario 'visiting web page' do
    sign_in_and_play
    expect(page).to have_text("Fluffkins")
    expect(page).to have_text("Truffles")
  end
end

feature 'see the player points' do
  scenario 'when names page is loaded' do
    sign_in_and_play
    expect(page).to have_text("Fluffkins has 50 points!")
  end
end

feature 'attack player' do
  scenario 'get confirmation when player has been attacked' do
    sign_in_and_attack
    expect(page).to have_text("Truffles has attacked Fluffkins!")
  end
end

feature 'reduce hit points when attacked' do
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_attack
    expect(page).to have_text("Fluffkins loses 10 HP!")
  end
end

feature 'turn switcher' do
  scenario 'switches player after attack' do
    sign_in_and_attack
    click_button "Back to battle!"
    click_button "Attack!"
    expect(page).to have_text("Truffles loses 10 HP!")
  end
end

feature 'turn switcher' do
  scenario 'Player 2 loses and sees lose message' do
    sign_in_and_attack_until_0_HP
    expect(page).to have_text("Fluffkins loses the battle!")
  end
end
