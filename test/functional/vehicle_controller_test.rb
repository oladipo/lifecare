require 'test_helper'

class VehicleControllerTest < ActionController::TestCase
  test "should get Number:string" do
    get :Number:string
    assert_response :success
  end

end
