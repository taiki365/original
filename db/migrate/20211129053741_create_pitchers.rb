class CreatePitchers < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchers do |t|
      t.string  :pitcher_name,               null: false
      t.integer :damage_hit,                 null: false
      t.float   :defense,                    null: false
      t.integer :win,                        null: false
      t.integer :lose,                       null: false
      t.integer :conceded,                   null: false
      t.integer :damage_homerun,             null: false
      t.integer :gave_walks,                 null: false
      t.integer :gave_dead_ball,             null: false
      t.integer :inning,                     null: false
      t.float   :damage_batting_average,     null: false
      t.float   :damage_base_percentage,     null: false
      t.integer :qs,                         null: false
      t.float   :damage_slugging_percentage, null: false
      t.timestamps
    end
  end
end
