require 'test_helper'

class Admin::PromosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_promos_index_url
    assert_response :success
  end

end
