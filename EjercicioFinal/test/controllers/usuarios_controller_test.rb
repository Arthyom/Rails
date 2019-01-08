require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get administrador" do
    get usuarios_administrador_url
    assert_response :success
  end

end
