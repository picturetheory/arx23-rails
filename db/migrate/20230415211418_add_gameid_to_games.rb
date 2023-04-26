class AddGameidToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :gameid, :integer, :after => :id
  end
end
