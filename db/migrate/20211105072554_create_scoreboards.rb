class CreateScoreboards < ActiveRecord::Migration[5.2]
  def change
    create_table :scoreboards do |t|
      t.integer :score
      t.integer :games_played
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
