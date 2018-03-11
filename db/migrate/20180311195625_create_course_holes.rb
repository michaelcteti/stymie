class CreateCourseHoles < ActiveRecord::Migration[5.1]
  def change
    create_table :course_holes do |t|
      t.references :course, foreign_key: true
      t.integer :number
      t.integer :par
      t.integer :yardage

      t.timestamps
    end
  end
end
