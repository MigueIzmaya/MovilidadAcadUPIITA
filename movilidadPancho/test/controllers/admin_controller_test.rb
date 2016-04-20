require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get control" do
    get :control
    assert_response :success
  end

  test "should get adminUniv" do
    get :adminUniv
    assert_response :success
  end

  test "should get usuario" do
    get :usuario
    assert_response :success
  end

end
