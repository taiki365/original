class CreateBatters < ActiveRecord::Migration[6.0]
  def change
    create_table :batters do |t|
      t.string  :batter_name,   null: false
      t.integer :bat,           null: false
      t.integer :rbi,           null: false
      t.integer :single,        null: false
      t.integer :double,        null: false
      t.integer :triple,        null: false
      t.integer :homerun,       null: false
      t.integer :walks,         null: false
      t.integer :dead_ball,     null: false
      t.integer :sacrifice_fly, null: false
      t.integer :strikeout,     null: false
      t.integer :steal,         null: false
      t.integer :steal_dead,    null: false
      t.integer :runs,          null: false
      t.timestamps
    end
  end
end
