class AddNotesToRounds < ActiveRecord::Migration[5.1]
  def change
    add_column :rounds, :notes, :text
  end
end
