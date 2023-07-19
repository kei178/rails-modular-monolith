require "test_helper"

class LegacyUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legacy_user = legacy_users(:one)
  end

  test "should get index" do
    get legacy_users_url, as: :json
    assert_response :success
  end

  test "should create legacy_user" do
    assert_difference('LegacyUser.count') do
      post legacy_users_url, params: { legacy_user: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show legacy_user" do
    get legacy_user_url(@legacy_user), as: :json
    assert_response :success
  end

  test "should update legacy_user" do
    patch legacy_user_url(@legacy_user), params: { legacy_user: {  } }, as: :json
    assert_response 200
  end

  test "should destroy legacy_user" do
    assert_difference('LegacyUser.count', -1) do
      delete legacy_user_url(@legacy_user), as: :json
    end

    assert_response 204
  end
end
