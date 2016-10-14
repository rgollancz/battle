def sign_in_and_play
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Do a dance"
end

def sign_in_and_attack
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Do a dance"
  click_button "ATTACK!"
end

def sign_in_and_attack_until_0_HP
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Do a dance"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
  click_button "go back to battle!"
  click_button "ATTACK!"
end
