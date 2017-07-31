require 'test_helper'

class PaicesControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get paices_Index_url
    assert_response :success
  end

end
