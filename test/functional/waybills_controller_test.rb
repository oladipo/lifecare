require 'test_helper'

class WaybillsControllerTest < ActionController::TestCase
  setup do
    @waybill = waybills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waybills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waybill" do
    assert_difference('Waybill.count') do
      post :create, waybill: { Description: @waybill.Description, DispatchDate: @waybill.DispatchDate, Number: @waybill.Number, Quantity: @waybill.Quantity }
    end

    assert_redirected_to waybill_path(assigns(:waybill))
  end

  test "should show waybill" do
    get :show, id: @waybill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waybill
    assert_response :success
  end

  test "should update waybill" do
    put :update, id: @waybill, waybill: { Description: @waybill.Description, DispatchDate: @waybill.DispatchDate, Number: @waybill.Number, Quantity: @waybill.Quantity }
    assert_redirected_to waybill_path(assigns(:waybill))
  end

  test "should destroy waybill" do
    assert_difference('Waybill.count', -1) do
      delete :destroy, id: @waybill
    end

    assert_redirected_to waybills_path
  end
end
