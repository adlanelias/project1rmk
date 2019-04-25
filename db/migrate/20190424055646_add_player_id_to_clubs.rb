class AddPlayerIdToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :player_id, :integer
  end
end
