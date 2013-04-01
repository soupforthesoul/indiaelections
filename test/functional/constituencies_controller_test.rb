require 'test_helper'

class ConstituenciesControllerTest < ActionController::TestCase
  setup do
    @constituency = constituencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constituencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constituency" do
    assert_difference('Constituency.count') do
      post :create, constituency: { female: @constituency.female, identifier: @constituency.identifier, male: @constituency.male, name: @constituency.name, number: @constituency.number, poll_percent: @constituency.poll_percent, runner_up: @constituency.runner_up, runner_up_party: @constituency.runner_up_party, state: @constituency.state, total_electors: @constituency.total_electors, winner: @constituency.winner, winner_party: @constituency.winner_party }
    end

    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should show constituency" do
    get :show, id: @constituency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constituency
    assert_response :success
  end

  test "should update constituency" do
    put :update, id: @constituency, constituency: { female: @constituency.female, identifier: @constituency.identifier, male: @constituency.male, name: @constituency.name, number: @constituency.number, poll_percent: @constituency.poll_percent, runner_up: @constituency.runner_up, runner_up_party: @constituency.runner_up_party, state: @constituency.state, total_electors: @constituency.total_electors, winner: @constituency.winner, winner_party: @constituency.winner_party }
    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should destroy constituency" do
    assert_difference('Constituency.count', -1) do
      delete :destroy, id: @constituency
    end

    assert_redirected_to constituencies_path
  end
end
