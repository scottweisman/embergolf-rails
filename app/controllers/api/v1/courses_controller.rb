class Api::V1::CoursesController < ApplicationController
  respond_to :json

  def index
    respond_with Course.all
  end

  def show
    respond_with course
  end

  def create
    respond_with :api, :v1, Course.create(course_params)
  end

  def update
    respond_with course.update(course_params)
  end

  def destroy
    respond_with course.destroy
  end

  private

    def course
      Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description)
    end

end
