class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :game_number,          null: false
      t.integer :team_name_id,         null: false
      t.integer :team_win,             null: false
      t.integer :team_lose,            null: false
      t.integer :draw,                 null: false
      t.float   :game_difference,      null: false
      t.float   :team_defense,         null: false
      t.float   :team_batting_average, null: false
      t.integer :team_homerun,         null: false
      t.integer :team_steal,           null: false
      t.integer :team_runs,            null: false 
      t.integer :tema_conceded,        null: false
      t.timestamps
    end
  end
end
