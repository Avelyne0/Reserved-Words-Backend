class Questions < ActiveRecord::Migration[5.2]
  def change
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
