require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get feedProjects" do
    get static_pages_feedProjects_url
    assert_response :success
  end

  test "should get portfolio" do
    get static_pages_portfolio_url
    assert_response :success
  end

end
