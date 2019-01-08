require 'test_helper'

class NavigationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get navigations_index_url
    assert_response :success
  end

  test "should get quienes" do
    get navigations_quienes_url
    assert_response :success
  end

  test "should get contacto" do
    get navigations_contacto_url
    assert_response :success
  end

  test "should get carro" do
    get navigations_carro_url
    assert_response :success
  end

end
