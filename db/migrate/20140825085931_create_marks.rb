class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :chinese
      t.integer :english
      t.integer :maths

      t.timestamps
    end
  end
end
