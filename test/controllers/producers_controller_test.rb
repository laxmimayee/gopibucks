require 'test_helper'

class ProducersControllerTest < ActionController::TestCase
  test "should get createprofile" do
    get :createprofile
    assert_response :success
  end

  test "should get showprofile" do
    get :showprofile
    assert_response :success
  end

  test "should get updateprofile" do
    get :updateprofile
    assert_response :success
  end

end
