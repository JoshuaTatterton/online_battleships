require "spec_helper"

feature "starting a new game" do
  scenario "I am asked to enter my name" do
    visit "/"
    click_link "New Game"
    expect(page).to have_content "What's your name?"
    our_name="Winnua"
    fill_in "name", with: our_name
    click_button "Submit"
    expect(page).to have_content "Hello, #{our_name}"
  end
  scenario "gives default name if name not submitted" do
    visit "/"
    click_link "New Game"
    click_button "Submit"
    expect(page).to have_content "Hello, Player1"
  end

end
