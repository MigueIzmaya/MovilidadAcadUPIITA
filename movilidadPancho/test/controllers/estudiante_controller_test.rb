require 'test_helper'

class EstudianteControllerTest < ActionController::TestCase
  test "should get movilidad" do
    get :movilidad
    assert_response :success
  end

  test "should get universidades" do
    get :universidades
    assert_response :success
  end

  test "should get avisos" do
    get :avisos
    assert_response :success
  end

  test "should get coach" do
    get :coach
    assert_response :success
  end

end
