class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.text :team_name
      t.text :team_rank
      t.text :manager
      t.text :schedule
      t.text :image

      t.timestamps
    end
  end
end
