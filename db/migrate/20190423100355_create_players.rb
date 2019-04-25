class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.text :name
      t.text :country
      t.text :dob
      t.text :position
      t.text :number
      t.text :nation_image
      t.text :image

      t.timestamps
    end
  end
end
