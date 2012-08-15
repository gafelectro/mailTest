require 'test_helper'

class EnviarControllerTest < ActionController::TestCase
  test "should get enviar" do
    get :enviar
    assert_response :success
  end

  test "should get borrar" do
    get :borrar
    assert_response :success
  end

end
