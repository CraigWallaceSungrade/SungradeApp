require 'test_helper'

class PropertyStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_staff = property_staffs(:one)
  end

  test "should get index" do
    get property_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_property_staff_url
    assert_response :success
  end

  test "should create property_staff" do
    assert_difference('PropertyStaff.count') do
      post property_staffs_url, params: { property_staff: {  } }
    end

    assert_redirected_to property_staff_url(PropertyStaff.last)
  end

  test "should show property_staff" do
    get property_staff_url(@property_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_staff_url(@property_staff)
    assert_response :success
  end

  test "should update property_staff" do
    patch property_staff_url(@property_staff), params: { property_staff: {  } }
    assert_redirected_to property_staff_url(@property_staff)
  end

  test "should destroy property_staff" do
    assert_difference('PropertyStaff.count', -1) do
      delete property_staff_url(@property_staff)
    end

    assert_redirected_to property_staffs_url
  end
end
