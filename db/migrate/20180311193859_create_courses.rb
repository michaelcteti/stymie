class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :tees
      t.float :rating
      t.integer :slope

      t.timestamps
    end
  end
end
