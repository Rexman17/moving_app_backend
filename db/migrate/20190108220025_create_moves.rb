class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :name
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
