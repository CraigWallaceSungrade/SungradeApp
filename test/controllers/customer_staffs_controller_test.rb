require 'test_helper'

class CustomerStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_staff = customer_staffs(:one)
  end

  test "should get index" do
    get customer_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_staff_url
    assert_response :success
  end

  test "should create customer_staff" do
    assert_difference('CustomerStaff.count') do
      post customer_staffs_url, params: { customer_staff: {  } }
    end

    assert_redirected_to customer_staff_url(CustomerStaff.last)
  end

  test "should show customer_staff" do
    get customer_staff_url(@customer_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_staff_url(@customer_staff)
    assert_response :success
  end

  test "should update customer_staff" do
    patch customer_staff_url(@customer_staff), params: { customer_staff: {  } }
    assert_redirected_to customer_staff_url(@customer_staff)
  end

  test "should destroy customer_staff" do
    assert_difference('CustomerStaff.count', -1) do
      delete customer_staff_url(@customer_staff)
    end

    assert_redirected_to customer_staffs_url
  end
end
