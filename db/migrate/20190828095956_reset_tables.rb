class ResetTables < ActiveRecord::Migration[5.2]
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
    create_table :rounds do |t| 
      t.references :team, index: true, foreign_key: true
      t.timestamps
    end
    create_table :questions do |t| 
      t.string :word
      t.string :taboo1
      t.string :taboo2
      t.string :taboo3
      t.string :taboo4
      t.references :round, index: true, foreign_key: true
      t.timestamps
    end
  end
end
