class EnrollmentsController < ApplicationController

  def index
    @enrollments = Enrollment.all
  end

  def show
    @enrollment = Enrollment.find_by(id: params[:id])
  end

  def new
  end

  def create
    @enrollment = Enrollment.new
    @enrollment.student_id = params[:student_id]
    @enrollment.course_id = params[:course_id]

    if @enrollment.save
      redirect_to "/enrollments"
    else
      render 'new'
    end
  end

  def edit
    @enrollment = Enrollment.find_by(id: params[:id])
  end

  def update
    @enrollment = Enrollment.find_by(id: params[:id])
    @enrollment.student_id = params[:student_id]
    @enrollment.course_id = params[:course_id]

    if @enrollment.save
      redirect_to "/enrollments"
    else
      render 'edit'
    end
  end

  def destroy
    @enrollment = Enrollment.find_by(id: params[:id])
    @enrollment.destroy


    redirect_to "/enrollments"
  end
end
