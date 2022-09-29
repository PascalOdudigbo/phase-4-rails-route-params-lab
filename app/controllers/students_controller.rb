class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.where("students.first_name LIKE ? OR students.last_name LIKE ?", params[:name], params[:name])
    else
      Student.all
    end
    render json: students

  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
