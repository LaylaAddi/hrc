require 'test_helper'

class ShippersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipper = shippers(:one)
  end

  test "should get index" do
    get shippers_url
    assert_response :success
  end

  test "should get new" do
    get new_shipper_url
    assert_response :success
  end

  test "should create shipper" do
    assert_difference('Shipper.count') do
      post shippers_url, params: { shipper: { broker_mc: @shipper.broker_mc, carrier_mc: @shipper.carrier_mc, contact: @shipper.contact, dot_number: @shipper.dot_number, fax: @shipper.fax, handle: @shipper.handle, location: @shipper.location, name: @shipper.name, telephone: @shipper.telephone } }
    end

    assert_redirected_to shipper_url(Shipper.last)
  end

  test "should show shipper" do
    get shipper_url(@shipper)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipper_url(@shipper)
    assert_response :success
  end

  test "should update shipper" do
    patch shipper_url(@shipper), params: { shipper: { broker_mc: @shipper.broker_mc, carrier_mc: @shipper.carrier_mc, contact: @shipper.contact, dot_number: @shipper.dot_number, fax: @shipper.fax, handle: @shipper.handle, location: @shipper.location, name: @shipper.name, telephone: @shipper.telephone } }
    assert_redirected_to shipper_url(@shipper)
  end

  test "should destroy shipper" do
    assert_difference('Shipper.count', -1) do
      delete shipper_url(@shipper)
    end

    assert_redirected_to shippers_url
  end
end
