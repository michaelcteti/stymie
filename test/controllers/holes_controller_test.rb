require 'test_helper'

class HolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hole = holes(:one)
  end

  test "should get index" do
    get holes_url, as: :json
    assert_response :success
  end

  test "should create hole" do
    assert_difference('Hole.count') do
      post holes_url, params: { hole: { course_hole_id: @hole.course_hole_id, gir: @hole.gir, ipd: @hole.ipd, putt_four: @hole.putt_four, putt_one: @hole.putt_one, putt_three: @hole.putt_three, putt_two: @hole.putt_two, round_id: @hole.round_id, score: @hole.score } }, as: :json
    end

    assert_response 201
  end

  test "should show hole" do
    get hole_url(@hole), as: :json
    assert_response :success
  end

  test "should update hole" do
    patch hole_url(@hole), params: { hole: { course_hole_id: @hole.course_hole_id, gir: @hole.gir, ipd: @hole.ipd, putt_four: @hole.putt_four, putt_one: @hole.putt_one, putt_three: @hole.putt_three, putt_two: @hole.putt_two, round_id: @hole.round_id, score: @hole.score } }, as: :json
    assert_response 200
  end

  test "should destroy hole" do
    assert_difference('Hole.count', -1) do
      delete hole_url(@hole), as: :json
    end

    assert_response 204
  end
end
