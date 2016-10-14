def sign_in_and_play
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Let's do this"
end

def sign_in_and_attack
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Let's do this"
  click_button "Attack!"
end

def sign_in_and_attack_until_0_HP
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Let's do this"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
  click_button "Attack!"
  click_button "Back to battle!"
end
