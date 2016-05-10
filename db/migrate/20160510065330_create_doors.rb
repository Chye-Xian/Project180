class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :name
      t.string :image
      t.string :contents
      t.references :game, index: true

      t.timestamps
    end
  end
end
