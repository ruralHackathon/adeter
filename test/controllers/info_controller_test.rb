require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get info_index_url
    assert_response :success
  end

  test "should get mercadillo" do
    get info_mercadillo_url
    assert_response :success
  end

  test "should get historia" do
    get info_historia_url
    assert_response :success
  end

  test "should get turismoactivo" do
    get info_turismoactivo_url
    assert_response :success
  end

  test "should get turismo" do
    get info_turismo_url
    assert_response :success
  end

  test "should get alojamiento" do
    get info_alojamiento_url
    assert_response :success
  end

  test "should get gastronomia" do
    get info_gastronomia_url
    assert_response :success
  end

  test "should get naturaleza" do
    get info_naturaleza_url
    assert_response :success
  end

  test "should get ocio" do
    get info_ocio_url
    assert_response :success
  end

  test "should get mapa" do
    get info_mapa_url
    assert_response :success
  end

end
