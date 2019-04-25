class CreateClubsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs_players do |t|
      t.integer :club_id
      t.integer :player_id
    end
  end
end
