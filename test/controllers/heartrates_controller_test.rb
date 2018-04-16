require 'test_helper'

class HeartratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heartrate = heartrates(:one)
  end

  test "should get index" do
    get heartrates_url, as: :json
    assert_response :success
  end

  test "should create heartrate" do
    assert_difference('Heartrate.count') do
      post heartrates_url, params: { heartrate: { patient_id: @heartrate.patient_id, time: @heartrate.time, value: @heartrate.value } }, as: :json
    end

    assert_response 201
  end

  test "should show heartrate" do
    get heartrate_url(@heartrate), as: :json
    assert_response :success
  end

  test "should update heartrate" do
    patch heartrate_url(@heartrate), params: { heartrate: { patient_id: @heartrate.patient_id, time: @heartrate.time, value: @heartrate.value } }, as: :json
    assert_response 200
  end

  test "should destroy heartrate" do
    assert_difference('Heartrate.count', -1) do
      delete heartrate_url(@heartrate), as: :json
    end

    assert_response 204
  end
end
