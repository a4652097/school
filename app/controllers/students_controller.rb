class StudentsController < ApplicationController
     before_action :get_id,only:[:update,:edit,:destroy]
  def index
    @student = Student.all
  end
  def edit
  end
  def update
    if @student=Student.find_by_id(params[:id]).update(name: params[:student][:name], age: params[:student][:age])
        redirect_to select_grades_path
      end
  end
  def new
    @student = Student.new
    @grades = Grade.all
  end
  def destroy
    @student.destroy
    redirect_to select_grades_path
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path
    else
      redirect_to new_student_path
    end
  end
  private

  def student_params
      params.require(:student).permit(:name,:age,:grade_id)
  end
  def get_id
    @student=Student.find(params[:id])
  end
end
