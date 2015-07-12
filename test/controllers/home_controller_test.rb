require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get main_home" do
    get :main_home
    assert_response :success
  end

  test "should get land" do
    get :land
    assert_response :success
  end

  test "should get land1" do
    get :land1
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
