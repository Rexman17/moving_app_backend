class RemoveIconFromMoves < ActiveRecord::Migration[5.2]
  def change
    remove_column :moves, :icon, :string
  end
end
