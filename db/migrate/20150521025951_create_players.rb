class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string  :name,          null: false
      t.integer :team_id,       null: false
      t.string  :affiliation
      t.integer :height_feet
      t.integer :height_inches
      t.integer :year,          null: false

      t.timestamps
    end
  end
end
