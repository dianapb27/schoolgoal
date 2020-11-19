class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
       @courses = Course.search_by_title_and_description_and_category(params[:query])
    else
      @courses = Course.all
    end
  end
end