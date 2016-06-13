require 'test_helper'

class SoftsControllerTest < ActionController::TestCase
  setup do
    @soft = softs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:softs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soft" do
    assert_difference('Soft.count') do
      post :create, soft: { hard: @soft.hard, maker: @soft.maker, name: @soft.name, price: @soft.price }
    end

    assert_redirected_to soft_path(assigns(:soft))
  end

  test "should show soft" do
    get :show, id: @soft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soft
    assert_response :success
  end

  test "should update soft" do
    patch :update, id: @soft, soft: { hard: @soft.hard, maker: @soft.maker, name: @soft.name, price: @soft.price }
    assert_redirected_to soft_path(assigns(:soft))
  end

  test "should destroy soft" do
    assert_difference('Soft.count', -1) do
      delete :destroy, id: @soft
    end

    assert_redirected_to softs_path
  end
end
