require 'test_helper'

class QuestionControllerTest < ActionController::TestCase
  test "should get evaluation" do
    get :evaluation
    assert_response :success
  end

end
