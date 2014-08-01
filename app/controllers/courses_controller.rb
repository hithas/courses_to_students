class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(id: params[:id])
    @enrollments = @course.enrollments
  end

  def new
  end

  def create
    @course = Course.new
    @course.name = params[:name]
   # @enrollment = Enrollment.new
   # @enrollment.course_id = @course.id
   # @enrollment.student_id = params[:student]
   # @enrollment.save

    if @course.save
      redirect_to "/courses/#{ @course.id }"
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    @course = Course.find_by(id: params[:id])
    @course.name = params[:name]
   # @course.student_id = params[:student_id]

    if @course.save
      redirect_to "/courses/#{ @course.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find_by(id: params[:id])
    @course.destroy


    redirect_to "/courses"
  end
end
