require "application_system_test_case"

class MacrosTest < ApplicationSystemTestCase
  setup do
    @macro = macros(:one)
  end

  test "visiting the index" do
    visit macros_url
    assert_selector "h1", text: "Macros"
  end

  test "should create macro" do
    visit macros_url
    click_on "New macro"

    click_on "Create Macro"

    assert_text "Macro was successfully created"
    click_on "Back"
  end

  test "should update Macro" do
    visit macro_url(@macro)
    click_on "Edit this macro", match: :first

    click_on "Update Macro"

    assert_text "Macro was successfully updated"
    click_on "Back"
  end

  test "should destroy Macro" do
    visit macro_url(@macro)
    click_on "Destroy this macro", match: :first

    assert_text "Macro was successfully destroyed"
  end
end
