class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :category
      t.integer :move_id

      t.timestamps
    end
  end
end
