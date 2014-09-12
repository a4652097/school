class MarksController < ApplicationController
  def index
  end
  def show
    @mark = Mark.where(student_id: params[:id])
  end
  def add
    @mark = Mark.new
    @student_id = params[:id]
  end
  def create
    @mark = Mark.new(maks_params)
    if @mark.save
      redirect_to select_grades_path
    else
      redirect_to add_mark_path(@mark.student_id)
    end
  end
  private
  def maks_params
    params.require(:mark).permit(:chinese, :maths, :english,:student_id)
  end
end
