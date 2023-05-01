require "test_helper"

class TravelOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_option = travel_options(:one)
  end

  test "should get index" do
    get travel_options_url, as: :json
    assert_response :success
  end

  test "should create travel_option" do
    assert_difference("TravelOption.count") do
      post travel_options_url, params: { travel_option: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show travel_option" do
    get travel_option_url(@travel_option), as: :json
    assert_response :success
  end

  test "should update travel_option" do
    patch travel_option_url(@travel_option), params: { travel_option: {  } }, as: :json
    assert_response :success
  end

  test "should destroy travel_option" do
    assert_difference("TravelOption.count", -1) do
      delete travel_option_url(@travel_option), as: :json
    end

    assert_response :no_content
  end
end
