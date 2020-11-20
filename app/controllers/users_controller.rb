class UsersController < ApplicationController

  def show
    @user = current_user
    @empty = @user.owned_courses.all? do |course|
      course.appointments.empty?
    end
  end
end
