class CreateHoles < ActiveRecord::Migration[5.1]
  def change
    create_table :holes do |t|
      t.references :round, foreign_key: true
      t.references :course_hole, foreign_key: true
      t.integer :score
      t.boolean :ipd
      t.boolean :gir
      t.integer :putt_one
      t.integer :putt_two
      t.integer :putt_three
      t.integer :putt_four

      t.timestamps
    end
  end
end
