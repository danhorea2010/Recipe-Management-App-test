require "application_system_test_case"

class MacrosControllersTest < ApplicationSystemTestCase
  setup do
    @macros_controller = macros_controllers(:one)
  end

  test "visiting the index" do
    visit macros_controllers_url
    assert_selector "h1", text: "Macros controllers"
  end

  test "should create macros controller" do
    visit macros_controllers_url
    click_on "New macros controller"

    click_on "Create Macros controller"

    assert_text "Macros controller was successfully created"
    click_on "Back"
  end

  test "should update Macros controller" do
    visit macros_controller_url(@macros_controller)
    click_on "Edit this macros controller", match: :first

    click_on "Update Macros controller"

    assert_text "Macros controller was successfully updated"
    click_on "Back"
  end

  test "should destroy Macros controller" do
    visit macros_controller_url(@macros_controller)
    click_on "Destroy this macros controller", match: :first

    assert_text "Macros controller was successfully destroyed"
  end
end
