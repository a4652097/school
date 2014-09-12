class GradesController < ApplicationController
  before_action :get_id,only:[:destroy,:update,:edit]
  def index
    @grade = Grade.all
  end
  def new
    @grade = Grade.new
  end
  def edit
  end
  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      redirect_to root_path
    else
      redirect_to new_grade_path
    end
  end
  def select
    @grade = Grade.all
  end
  def show_list
    @grade = Grade.find_by_id(params[:student][:grade_id])
    @grade_id = params[:student][:grade_id]
  end
  def destroy
    @grade.destroy
    redirect_to root_path
  end
  def show_grade
    @grade = Grade.paginate(:page => params[:page], :per_page => 3)
  end
  def update
    @grade = Grade.find_by_id(params[:id]).update(name: params[:grade][:name])
    redirect_to root_path
  end

  private

  def grade_params
      params.require(:grade).permit(:name)
  end
    def get_id
    @grade=Grade.find(params[:id])
  end
end
