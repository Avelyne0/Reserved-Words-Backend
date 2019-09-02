class RemovePlayer1FromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :player1
    remove_column :teams, :player2
    remove_column :teams, :player3
    remove_column :teams, :player4
    remove_column :teams, :player5
    remove_column :teams, :player6
  end
end
