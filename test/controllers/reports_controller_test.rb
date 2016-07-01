require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get report_evaluation" do
    get :report_evaluation
    assert_response :success
  end

end
