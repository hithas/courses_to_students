class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
    @enrollments = @student.enrollments
  end
  

  def new
  end

  def create
    @student = Student.new
    @student.name = params[:name]
    @student.email = params[:email]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
    @enrollments = @student.enrollments
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.name = params[:name]
    @student.email = params[:email]
    # @student.course = params[:course] I'm pretty sure this is invalid, not sure what to do

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'edit'
    end
  end

  def add_course
    @enrollment = Enrollment.new
    @enrollment.student_id = params[:id]
    @enrollment.course_id = Course.find_by(name: params[:course_name]).id

    if @enrollment.save
      redirect_to "/students/#{ params[:id] }"
    else
      render 'new'
    end
  end
  
  def remove_course
    enrollment = Enrollment.find_by(student_id: params[:id], course_id: params[:course_id])
    enrollment.destroy
    redirect_to "/students/#{ params[:id] }/edit"
  end
  
  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    redirect_to "/students"
  end
end
