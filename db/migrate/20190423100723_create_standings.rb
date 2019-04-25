class CreateStandings < ActiveRecord::Migration[5.2]
  def change
    create_table :standings do |t|
      t.text :team_rank
      t.text :team_name
      t.integer :win
      t.integer :draw
      t.integer :loss
      t.integer :goals_for
      t.integer :goals_against
      t.integer :goal_difference
      t.integer :points

      t.timestamps
    end
  end
end
