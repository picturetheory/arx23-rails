class RemoveGameidFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :gameid, :integer
    remove_column :games, :player2, :string
    remove_column :games, :state, :string
    remove_column :games, :winner, :string
  end
end
