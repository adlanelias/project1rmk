class AddClubIdToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :club_id, :integer
  end
end
