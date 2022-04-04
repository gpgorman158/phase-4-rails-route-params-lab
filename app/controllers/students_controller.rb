class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students
    student = Student.find_by(first_name: params[:firstName], last_name: params[:lastName])
    render json: student
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
