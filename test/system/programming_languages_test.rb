require "application_system_test_case"

class ProgrammingLanguagesTest < ApplicationSystemTestCase
  setup do
    @programming_language = programming_languages(:one)
  end

  test "visiting the index" do
    visit programming_languages_url
    assert_selector "h1", text: "Programming languages"
  end

  test "should create programming language" do
    visit programming_languages_url
    click_on "New programming language"

    fill_in "Creator", with: @programming_language.creator
    fill_in "Name", with: @programming_language.name
    fill_in "Year", with: @programming_language.year
    click_on "Create Programming language"

    assert_text "Programming language was successfully created"
    click_on "Back"
  end

  test "should update Programming language" do
    visit programming_language_url(@programming_language)
    click_on "Edit this programming language", match: :first

    fill_in "Creator", with: @programming_language.creator
    fill_in "Name", with: @programming_language.name
    fill_in "Year", with: @programming_language.year
    click_on "Update Programming language"

    assert_text "Programming language was successfully updated"
    click_on "Back"
  end

  test "should destroy Programming language" do
    visit programming_language_url(@programming_language)
    click_on "Destroy this programming language", match: :first

    assert_text "Programming language was successfully destroyed"
  end
end
