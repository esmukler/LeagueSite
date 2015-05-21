class DeletePlayerColumn < ActiveRecord::Migration
  def change
    remove_column :players, :year
  end
end
