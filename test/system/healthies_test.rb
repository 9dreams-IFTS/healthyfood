require "application_system_test_case"

class HealthiesTest < ApplicationSystemTestCase
  setup do
    @healthy = healthies(:one)
  end

  test "visiting the index" do
    visit healthies_url
    assert_selector "h1", text: "Healthies"
  end

  test "should create healthy" do
    visit healthies_url
    click_on "New healthy"

    fill_in "Descrizione", with: @healthy.descrizione
    fill_in "Prezzo", with: @healthy.prezzo
    fill_in "Titolo", with: @healthy.titolo
    click_on "Create Healthy"

    assert_text "Healthy was successfully created"
    click_on "Back"
  end

  test "should update Healthy" do
    visit healthy_url(@healthy)
    click_on "Edit this healthy", match: :first

    fill_in "Descrizione", with: @healthy.descrizione
    fill_in "Prezzo", with: @healthy.prezzo
    fill_in "Titolo", with: @healthy.titolo
    click_on "Update Healthy"

    assert_text "Healthy was successfully updated"
    click_on "Back"
  end

  test "should destroy Healthy" do
    visit healthy_url(@healthy)
    click_on "Destroy this healthy", match: :first

    assert_text "Healthy was successfully destroyed"
  end
end
