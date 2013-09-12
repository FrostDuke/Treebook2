require 'test_helper'

class StausControllerTest < ActionController::TestCase
  setup do
    @stau = staus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stau" do
    assert_difference('Stau.count') do
      post :create, stau: { content: @stau.content, name: @stau.name, sting: @stau.sting, text: @stau.text }
    end

    assert_redirected_to stau_path(assigns(:stau))
  end

  test "should show stau" do
    get :show, id: @stau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stau
    assert_response :success
  end

  test "should update stau" do
    put :update, id: @stau, stau: { content: @stau.content, name: @stau.name, sting: @stau.sting, text: @stau.text }
    assert_redirected_to stau_path(assigns(:stau))
  end

  test "should destroy stau" do
    assert_difference('Stau.count', -1) do
      delete :destroy, id: @stau
    end

    assert_redirected_to staus_path
  end
end
