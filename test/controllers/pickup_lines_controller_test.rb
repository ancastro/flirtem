require 'test_helper'

class PickupLinesControllerTest < ActionController::TestCase
  setup do
    @pickup_line = pickup_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickup_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup_line" do
    assert_difference('PickupLine.count') do
      post :create, pickup_line: { author_id: @pickup_line.author_id, text: @pickup_line.text }
    end

    assert_redirected_to pickup_line_path(assigns(:pickup_line))
  end

  test "should show pickup_line" do
    get :show, id: @pickup_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup_line
    assert_response :success
  end

  test "should update pickup_line" do
    patch :update, id: @pickup_line, pickup_line: { author_id: @pickup_line.author_id, text: @pickup_line.text }
    assert_redirected_to pickup_line_path(assigns(:pickup_line))
  end

  test "should destroy pickup_line" do
    assert_difference('PickupLine.count', -1) do
      delete :destroy, id: @pickup_line
    end

    assert_redirected_to pickup_lines_path
  end
end
