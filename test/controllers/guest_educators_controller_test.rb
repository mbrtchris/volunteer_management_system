require 'test_helper'

class GuestEducatorsControllerTest < ActionController::TestCase
  setup do
    @guest_educator = guest_educators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guest_educators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest_educator" do
    assert_difference('GuestEducator.count') do
      post :create, guest_educator: { class_session_id: @guest_educator.class_session_id, email: @guest_educator.email, name: @guest_educator.name }
    end

    assert_redirected_to guest_educator_path(assigns(:guest_educator))
  end

  test "should show guest_educator" do
    get :show, id: @guest_educator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest_educator
    assert_response :success
  end

  test "should update guest_educator" do
    patch :update, id: @guest_educator, guest_educator: { class_session_id: @guest_educator.class_session_id, email: @guest_educator.email, name: @guest_educator.name }
    assert_redirected_to guest_educator_path(assigns(:guest_educator))
  end

  test "should destroy guest_educator" do
    assert_difference('GuestEducator.count', -1) do
      delete :destroy, id: @guest_educator
    end

    assert_redirected_to guest_educators_path
  end
end
