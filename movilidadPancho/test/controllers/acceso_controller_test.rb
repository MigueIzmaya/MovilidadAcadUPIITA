require 'test_helper'

class AccesoControllerTest < ActionController::TestCase
  test "should get recpwd" do
    get :recpwd
    assert_response :success
  end

end
