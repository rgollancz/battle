def sign_in_and_play
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Do a dance"
end
