require "test_helper"

class AccommodationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accommodation = accommodations(:one)
  end

  test "should get index" do
    get accommodations_url, as: :json
    assert_response :success
  end

  test "should create accommodation" do
    assert_difference("Accommodation.count") do
      post accommodations_url, params: { accommodation: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show accommodation" do
    get accommodation_url(@accommodation), as: :json
    assert_response :success
  end

  test "should update accommodation" do
    patch accommodation_url(@accommodation), params: { accommodation: {  } }, as: :json
    assert_response :success
  end

  test "should destroy accommodation" do
    assert_difference("Accommodation.count", -1) do
      delete accommodation_url(@accommodation), as: :json
    end

    assert_response :no_content
  end
end
