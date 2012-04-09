require 'test_helper'

class Assignment2sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignment2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end



  test "should show assignment2" do
    get :show, :id => assignment2s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => assignment2s(:one).to_param
    assert_response :success
  end



  test "should destroy assignment2" do
    assert_difference('Assignment2.count', -1) do
      delete :destroy, :id => assignment2s(:one).to_param
    end

    assert_redirected_to assignment2s_path
  end
end
