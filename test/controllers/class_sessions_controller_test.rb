require 'test_helper'

class ClassSessionsControllerTest < ActionController::TestCase
  setup do
    @class_session = class_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_session" do
    assert_difference('ClassSession.count') do
      post :create, class_session: { end_time: @class_session.end_time, notes: @class_session.notes, number_of_students: @class_session.number_of_students, room: @class_session.room, start_time: @class_session.start_time, subject: @class_session.subject }
    end

    assert_redirected_to class_session_path(assigns(:class_session))
  end

  test "should show class_session" do
    get :show, id: @class_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_session
    assert_response :success
  end

  test "should update class_session" do
    patch :update, id: @class_session, class_session: { end_time: @class_session.end_time, notes: @class_session.notes, number_of_students: @class_session.number_of_students, room: @class_session.room, start_time: @class_session.start_time, subject: @class_session.subject }
    assert_redirected_to class_session_path(assigns(:class_session))
  end

  test "should destroy class_session" do
    assert_difference('ClassSession.count', -1) do
      delete :destroy, id: @class_session
    end

    assert_redirected_to class_sessions_path
  end
end
