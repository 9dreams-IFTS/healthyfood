require "test_helper"

class HealthiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @healthy = healthies(:one)
  end

  test "should get index" do
    get healthies_url
    assert_response :success
  end

  test "should get new" do
    get new_healthy_url
    assert_response :success
  end

  test "should create healthy" do
    assert_difference("Healthy.count") do
      post healthies_url, params: { healthy: { descrizione: @healthy.descrizione, prezzo: @healthy.prezzo, titolo: @healthy.titolo } }
    end

    assert_redirected_to healthy_url(Healthy.last)
  end

  test "should show healthy" do
    get healthy_url(@healthy)
    assert_response :success
  end

  test "should get edit" do
    get edit_healthy_url(@healthy)
    assert_response :success
  end

  test "should update healthy" do
    patch healthy_url(@healthy), params: { healthy: { descrizione: @healthy.descrizione, prezzo: @healthy.prezzo, titolo: @healthy.titolo } }
    assert_redirected_to healthy_url(@healthy)
  end

  test "should destroy healthy" do
    assert_difference("Healthy.count", -1) do
      delete healthy_url(@healthy)
    end

    assert_redirected_to healthies_url
  end
end
