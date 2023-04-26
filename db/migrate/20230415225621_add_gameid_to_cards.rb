class AddGameidToCards < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :number, :integer
	remove_column :cards, :suit, :string
	add_column :cards, :value, :integer
	add_column :cards, :suit, :string
	add_column :cards, :game_id, :integer
  end
end
