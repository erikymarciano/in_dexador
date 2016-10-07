require 'test_helper'

class InterestlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interestlist = interestlists(:one)
  end

  test "should get index" do
    get interestlists_url
    assert_response :success
  end

  test "should get new" do
    get new_interestlist_url
    assert_response :success
  end

  test "should create interestlist" do
    assert_difference('Interestlist.count') do
      post interestlists_url, params: { interestlist: { interest: @interestlist.interest, interesttype: @interestlist.interesttype, project_id: @interestlist.project_id, user_id: @interestlist.user_id } }
    end

    assert_redirected_to interestlist_url(Interestlist.last)
  end

  test "should show interestlist" do
    get interestlist_url(@interestlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_interestlist_url(@interestlist)
    assert_response :success
  end

  test "should update interestlist" do
    patch interestlist_url(@interestlist), params: { interestlist: { interest: @interestlist.interest, interesttype: @interestlist.interesttype, project_id: @interestlist.project_id, user_id: @interestlist.user_id } }
    assert_redirected_to interestlist_url(@interestlist)
  end

  test "should destroy interestlist" do
    assert_difference('Interestlist.count', -1) do
      delete interestlist_url(@interestlist)
    end

    assert_redirected_to interestlists_url
  end
end
