class AddStudentIdToMark < ActiveRecord::Migration
  def change
    add_column :marks, :student_id, :integer
  end
end
