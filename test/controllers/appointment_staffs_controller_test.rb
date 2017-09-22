require 'test_helper'

class AppointmentStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment_staff = appointment_staffs(:one)
  end

  test "should get index" do
    get appointment_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_staff_url
    assert_response :success
  end

  test "should create appointment_staff" do
    assert_difference('AppointmentStaff.count') do
      post appointment_staffs_url, params: { appointment_staff: {  } }
    end

    assert_redirected_to appointment_staff_url(AppointmentStaff.last)
  end

  test "should show appointment_staff" do
    get appointment_staff_url(@appointment_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_staff_url(@appointment_staff)
    assert_response :success
  end

  test "should update appointment_staff" do
    patch appointment_staff_url(@appointment_staff), params: { appointment_staff: {  } }
    assert_redirected_to appointment_staff_url(@appointment_staff)
  end

  test "should destroy appointment_staff" do
    assert_difference('AppointmentStaff.count', -1) do
      delete appointment_staff_url(@appointment_staff)
    end

    assert_redirected_to appointment_staffs_url
  end
end
