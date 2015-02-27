require "rails_helper"

feature "user can create todos" do
  scenario "with valid data" do
    visit new_to_do_path
    fill_in "to_do_title", with: "First ToDo"
    first('input#order', visible: false).set("1")
    click_button "Create ToDo"
    expect(page).to have_content("ToDo created.")
  end
end
