require 'test_helper'

class BandControllerTest < ActionController::TestCase
  test "should get index_band" do
    get :index_band
    assert_response :success
  end

end
