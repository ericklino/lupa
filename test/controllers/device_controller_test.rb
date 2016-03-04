require 'test_helper'

class DeviceControllerTest < ActionController::TestCase
  test "should get index_device" do
    get :index_device
    assert_response :success
  end

end
