class ReorderSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t| 
      t.timestamps
      end
      create_table :teams do |t| 
      t.references :game, index: true, foreign_key: true
      t.timestamps
      end
      create_table :users do |t|
      t.references :team, index: true, foreign_key: true
      t.string :name
      t.integer :score
      t.timestamps
      end
      create_table :questions do |t| 
      t.references :user, index: true, foreign_key: true
      t.string :word
      t.string :taboo1
      t.string :taboo2
      t.string :taboo3
      t.string :taboo4
      t.timestamps
      end
  end
end
