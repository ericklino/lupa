require 'test_helper'

class DeviceControllerControllerTest < ActionController::TestCase
  test "should get index_device" do
    get :index_device
    assert_response :success
  end

end
