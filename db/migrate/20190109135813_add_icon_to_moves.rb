class AddIconToMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :icon, :string
  end
end
