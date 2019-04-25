class CreateStandingsClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :standings_clubs do |t|
      t.integer :standing_id
      t.integer :club_id
    end
  end
end
