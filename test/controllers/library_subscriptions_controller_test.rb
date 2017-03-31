require 'test_helper'

class LibrarySubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_subscription = library_subscriptions(:one)
  end

  test "should get index" do
    get library_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_library_subscription_url
    assert_response :success
  end

  test "should create library_subscription" do
    assert_difference('LibrarySubscription.count') do
      post library_subscriptions_url, params: { library_subscription: { end_date: @library_subscription.end_date, start_date: @library_subscription.start_date, status: @library_subscription.status } }
    end

    assert_redirected_to library_subscription_url(LibrarySubscription.last)
  end

  test "should show library_subscription" do
    get library_subscription_url(@library_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_library_subscription_url(@library_subscription)
    assert_response :success
  end

  test "should update library_subscription" do
    patch library_subscription_url(@library_subscription), params: { library_subscription: { end_date: @library_subscription.end_date, start_date: @library_subscription.start_date, status: @library_subscription.status } }
    assert_redirected_to library_subscription_url(@library_subscription)
  end

  test "should destroy library_subscription" do
    assert_difference('LibrarySubscription.count', -1) do
      delete library_subscription_url(@library_subscription)
    end

    assert_redirected_to library_subscriptions_url
  end
end
