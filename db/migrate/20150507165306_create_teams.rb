class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string  :name, null: false
      t.text  :coaches
      t.integer :year, null: false

      t.timestamps
    end
  end
end
