class AddColumnsToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :gameid, :integer
	add_column :games, :player1, :string
	add_column :games, :player1score, :integer
    add_column :games, :player2, :string
	add_column :games, :player2score, :integer
    add_column :games, :state, :string
    add_column :games, :winner, :string
  end
end
