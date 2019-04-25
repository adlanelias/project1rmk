class CreateSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :squads do |t|
      t.text :name
      t.text :number
      t.text :position

      t.timestamps
    end
  end
end
