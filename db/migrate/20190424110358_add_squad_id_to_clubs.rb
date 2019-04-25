class AddSquadIdToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :squad_id, :integer
  end
end
