require 'test_helper'

class NuevoUsuarioControllerTest < ActionController::TestCase
  test "should get misdatos" do
    get :misdatos
    assert_response :success
  end

  test "should get mdeconomia" do
    get :mdeconomia
    assert_response :success
  end

  test "should get mdidiomas" do
    get :mdidiomas
    assert_response :success
  end

  test "should get mdmovilidad" do
    get :mdmovilidad
    assert_response :success
  end

end
