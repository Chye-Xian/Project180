require 'test_helper'

class MontyhallControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get choice" do
    get :choice
    assert_response :success
  end

end
