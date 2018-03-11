require 'test_helper'

class CourseHolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_hole = course_holes(:one)
  end

  test "should get index" do
    get course_holes_url, as: :json
    assert_response :success
  end

  test "should create course_hole" do
    assert_difference('CourseHole.count') do
      post course_holes_url, params: { course_hole: { course_id: @course_hole.course_id, number: @course_hole.number, par: @course_hole.par, yardage: @course_hole.yardage } }, as: :json
    end

    assert_response 201
  end

  test "should show course_hole" do
    get course_hole_url(@course_hole), as: :json
    assert_response :success
  end

  test "should update course_hole" do
    patch course_hole_url(@course_hole), params: { course_hole: { course_id: @course_hole.course_id, number: @course_hole.number, par: @course_hole.par, yardage: @course_hole.yardage } }, as: :json
    assert_response 200
  end

  test "should destroy course_hole" do
    assert_difference('CourseHole.count', -1) do
      delete course_hole_url(@course_hole), as: :json
    end

    assert_response 204
  end
end
