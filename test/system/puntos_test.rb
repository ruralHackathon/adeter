require "application_system_test_case"

class PuntosTest < ApplicationSystemTestCase
  setup do
    @punto = puntos(:one)
  end

  test "visiting the index" do
    visit puntos_url
    assert_selector "h1", text: "Puntos"
  end

  test "creating a Punto" do
    visit puntos_url
    click_on "New Punto"

    fill_in "Descripcion", with: @punto.descripcion
    fill_in "Horario", with: @punto.horario
    fill_in "Info", with: @punto.info
    fill_in "Lat", with: @punto.lat
    fill_in "Lon", with: @punto.lon
    fill_in "Precio", with: @punto.precio
    fill_in "Subtitulo", with: @punto.subtitulo
    fill_in "Titulo", with: @punto.titulo
    fill_in "Video", with: @punto.video
    click_on "Create Punto"

    assert_text "Punto was successfully created"
    click_on "Back"
  end

  test "updating a Punto" do
    visit puntos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @punto.descripcion
    fill_in "Horario", with: @punto.horario
    fill_in "Info", with: @punto.info
    fill_in "Lat", with: @punto.lat
    fill_in "Lon", with: @punto.lon
    fill_in "Precio", with: @punto.precio
    fill_in "Subtitulo", with: @punto.subtitulo
    fill_in "Titulo", with: @punto.titulo
    fill_in "Video", with: @punto.video
    click_on "Update Punto"

    assert_text "Punto was successfully updated"
    click_on "Back"
  end

  test "destroying a Punto" do
    visit puntos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Punto was successfully destroyed"
  end
end
