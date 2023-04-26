class RemoveColumnsFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :state, :string
	remove_column :games, :winner, :string
  end
end
