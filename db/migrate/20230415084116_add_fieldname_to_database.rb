class AddFieldnameToDatabase < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :state, :string
	add_column :cards, :winner, :string
  end
end
