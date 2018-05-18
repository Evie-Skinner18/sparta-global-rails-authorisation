require "application_system_test_case"

class CheesesTest < ApplicationSystemTestCase
  setup do
    @cheese = cheeses(:one)
  end

  test "visiting the index" do
    visit cheeses_url
    assert_selector "h1", text: "Cheeses"
  end

  test "creating a Cheese" do
    visit cheeses_url
    click_on "New Cheese"

    fill_in "Country", with: @cheese.country
    fill_in "Name", with: @cheese.name
    fill_in "Strength", with: @cheese.strength
    fill_in "User", with: @cheese.user_id
    click_on "Create Cheese"

    assert_text "Cheese was successfully created"
    click_on "Back"
  end

  test "updating a Cheese" do
    visit cheeses_url
    click_on "Edit", match: :first

    fill_in "Country", with: @cheese.country
    fill_in "Name", with: @cheese.name
    fill_in "Strength", with: @cheese.strength
    fill_in "User", with: @cheese.user_id
    click_on "Update Cheese"

    assert_text "Cheese was successfully updated"
    click_on "Back"
  end

  test "destroying a Cheese" do
    visit cheeses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cheese was successfully destroyed"
  end
end
