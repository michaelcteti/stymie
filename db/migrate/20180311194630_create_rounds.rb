class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.datetime :date
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
