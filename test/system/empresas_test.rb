require "application_system_test_case"

class EmpresasTest < ApplicationSystemTestCase
  setup do
    @empresa = empresas(:one)
  end

  test "visiting the index" do
    visit empresas_url
    assert_selector "h1", text: "Empresas"
  end

  test "creating a Empresa" do
    visit empresas_url
    click_on "New Empresa"

    fill_in "Direccion", with: @empresa.direccion
    fill_in "Email", with: @empresa.email
    fill_in "Historia", with: @empresa.historia
    fill_in "Horario", with: @empresa.horario
    fill_in "Lat", with: @empresa.lat
    fill_in "Lon", with: @empresa.lon
    fill_in "Nombre", with: @empresa.nombre
    fill_in "Resumen", with: @empresa.resumen
    fill_in "Telefono", with: @empresa.telefono
    fill_in "User id", with: @empresa.user_id_id
    fill_in "Video", with: @empresa.video
    fill_in "Web", with: @empresa.web
    click_on "Create Empresa"

    assert_text "Empresa was successfully created"
    click_on "Back"
  end

  test "updating a Empresa" do
    visit empresas_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @empresa.direccion
    fill_in "Email", with: @empresa.email
    fill_in "Historia", with: @empresa.historia
    fill_in "Horario", with: @empresa.horario
    fill_in "Lat", with: @empresa.lat
    fill_in "Lon", with: @empresa.lon
    fill_in "Nombre", with: @empresa.nombre
    fill_in "Resumen", with: @empresa.resumen
    fill_in "Telefono", with: @empresa.telefono
    fill_in "User id", with: @empresa.user_id_id
    fill_in "Video", with: @empresa.video
    fill_in "Web", with: @empresa.web
    click_on "Update Empresa"

    assert_text "Empresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Empresa" do
    visit empresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empresa was successfully destroyed"
  end
end
