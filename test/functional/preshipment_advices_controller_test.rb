require 'test_helper'

class PreshipmentAdvicesControllerTest < ActionController::TestCase
  setup do
    @preshipment_advice = preshipment_advices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preshipment_advices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preshipment_advice" do
    assert_difference('PreshipmentAdvice.count') do
      post :create, preshipment_advice: { Description: @preshipment_advice.Description, Quantity: @preshipment_advice.Quantity, TimeOfArrival: @preshipment_advice.TimeOfArrival, TimeOfDispatch: @preshipment_advice.TimeOfDispatch }
    end

    assert_redirected_to preshipment_advice_path(assigns(:preshipment_advice))
  end

  test "should show preshipment_advice" do
    get :show, id: @preshipment_advice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preshipment_advice
    assert_response :success
  end

  test "should update preshipment_advice" do
    put :update, id: @preshipment_advice, preshipment_advice: { Description: @preshipment_advice.Description, Quantity: @preshipment_advice.Quantity, TimeOfArrival: @preshipment_advice.TimeOfArrival, TimeOfDispatch: @preshipment_advice.TimeOfDispatch }
    assert_redirected_to preshipment_advice_path(assigns(:preshipment_advice))
  end

  test "should destroy preshipment_advice" do
    assert_difference('PreshipmentAdvice.count', -1) do
      delete :destroy, id: @preshipment_advice
    end

    assert_redirected_to preshipment_advices_path
  end
end
