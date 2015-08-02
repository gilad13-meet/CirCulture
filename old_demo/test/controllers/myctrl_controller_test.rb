require 'test_helper'

class MyctrlControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get food" do
    get :food
    assert_response :success
  end

end
