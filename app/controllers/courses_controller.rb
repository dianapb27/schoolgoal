class CoursesController < ApplicationController
  def index
    # @courses = policy_scope(Course)
    if params[:category].present?
      @courses = Course.where(category: params[:category])
    else
      @courses = Course.all
    end
  end

  def show
    @course = Course.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @course = Course.new
    @category = ['Spanish', 'German', 'Chinese', 'Japanese', 'English', 'Math', 'Science', 'Art', 'Music', 'History']
    # authorize @course
  end

  def create
    @course = Course.new(course_params)
    @user = current_user
    @course.teacher = @user
    # authorize @course
    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path 
  end

  private

  def course_params
    params.require(:course).permit(:title, :category, :description, :price_per_hour)
  end
end
