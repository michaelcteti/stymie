class CourseHolesController < ApplicationController
  before_action :set_course_hole, only: [:show, :update, :destroy]

  # GET /course_holes
  def index
    @course_holes = CourseHole.all

    render json: @course_holes
  end

  # GET /course_holes/1
  def show
    render json: @course_hole
  end

  # POST /course_holes
  def create
    @course_hole = CourseHole.new(course_hole_params)

    if @course_hole.save
      render json: @course_hole, status: :created, location: @course_hole
    else
      render json: @course_hole.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_holes/1
  def update
    if @course_hole.update(course_hole_params)
      render json: @course_hole
    else
      render json: @course_hole.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_holes/1
  def destroy
    @course_hole.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_hole
      @course_hole = CourseHole.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_hole_params
      params.require(:course_hole).permit(:course_id, :number, :par, :yardage)
    end
end
