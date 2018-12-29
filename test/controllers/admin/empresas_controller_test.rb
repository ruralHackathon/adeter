require 'test_helper'

class Admin::EmpresasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_empresas_index_url
    assert_response :success
  end

end
