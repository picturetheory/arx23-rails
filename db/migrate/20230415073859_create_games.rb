class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :gameid
      t.string :player1
      t.string :player2
      t.datetime :datetime

      t.timestamps
    end
  end
end
