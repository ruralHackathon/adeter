require 'test_helper'

class Admin::PuntosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_puntos_index_url
    assert_response :success
  end

end
