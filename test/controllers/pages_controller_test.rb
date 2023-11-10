require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get products" do
    get pages_products_url
    assert_response :success
  end

  test "should get knowledge" do
    get pages_knowledge_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get signup" do
    get pages_signup_url
    assert_response :success
  end
end
