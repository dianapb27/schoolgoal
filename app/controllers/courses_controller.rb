class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    if params[:query].present?
      @courses = Course.search_by_title_and_description_and_category(params[:query])
    else
      @courses = Course.all.reverse
    end
  end

  def show
    @appointment = Appointment.new
    authorize @course
  end

  def new
    @course = Course.new
    @category = ['Spanish', 'German', 'Chinese', 'Japanese', 'English', 'Math', 'Science', 'Art', 'Music', 'History']
    authorize @course
  end

  def create
    @course = Course.new(course_params)
    @user = current_user
    @course.teacher = @user
    authorize @course
    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course.destroy
    redirect_to courses_path 
  end

  private

  def course_params
    params.require(:course).permit(:title, :category, :description, :price_per_hour, :cover_photo)
  end

  def set_course
    @course = Course.find(params[:id])
    authorize @course
  end
end
