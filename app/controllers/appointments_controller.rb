class AppointmentsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(course_params)
    @course = Course.find(params[:course_id])
    @user = current_user
    @appointment.course = @course
    @appointment.student = @user
    if @appointment.save
      flash[:success] = "Congratulations! Your appointment is confirmed!🎉"
      redirect_to @course
    else
      flash[:alert] = "We're sorry, this appointment could not be booked. Please try again 😢"
      redirect_to @course
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @user = current_user
    if @appointment.destroy
      flash[:alert] = "You have cancelled this appointment ❌"
      redirect_to @user
    end
  end
  
  private

  def course_params
    params.require(:appointment).permit(:start_time, :end_time)
  end
  
end
