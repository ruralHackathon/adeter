require 'test_helper'

class Admin::EventosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_eventos_index_url
    assert_response :success
  end

end
