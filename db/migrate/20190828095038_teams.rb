class Teams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t| 
      t.string :player1
      t.string :player2
      t.string :player3
      t.string :player4
      t.string :player5
      t.string :player6
      t.integer :score
      t.references :game, index: true, foreign_key: true
      t.timestamps
    end
  end
end
