class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :door, index: true, foreign_key: true

      t.timestamps
    end
  end
end
