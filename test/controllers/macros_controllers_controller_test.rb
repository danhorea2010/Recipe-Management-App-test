require "test_helper"

class MacrosControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @macros_controller = macros_controllers(:one)
  end

  test "should get index" do
    get macros_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_macros_controller_url
    assert_response :success
  end

  test "should create macros_controller" do
    assert_difference("MacrosController.count") do
      post macros_controllers_url, params: { macros_controller: {  } }
    end

    assert_redirected_to macros_controller_url(MacrosController.last)
  end

  test "should show macros_controller" do
    get macros_controller_url(@macros_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_macros_controller_url(@macros_controller)
    assert_response :success
  end

  test "should update macros_controller" do
    patch macros_controller_url(@macros_controller), params: { macros_controller: {  } }
    assert_redirected_to macros_controller_url(@macros_controller)
  end

  test "should destroy macros_controller" do
    assert_difference("MacrosController.count", -1) do
      delete macros_controller_url(@macros_controller)
    end

    assert_redirected_to macros_controllers_url
  end
end
