class Team < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :team_name

  validates :game_number,          presence: true, numericality: { greater_than: 0 }
  validates :team_name_id,         presence: true, numericality: { greater_than: 1, less_than: 7 }
  validates :team_win,             presence: true, numericality: { greater_than: 0 }
  validates :team_lose,            presence: true, numericality: { greater_than: 0 }
  validates :draw,                 presence: true, numericality: { greater_than: 0 }
  validates :game_difference,      presence: true
  validates :team_defense,         presence: true
  validates :team_batting_average, presence: true
  validates :team_homerun,         presence: true, numericality: { greater_than: 0 }
  validates :team_steal,           presence: true, numericality: { greater_than: 0 }
  validates :team_runs,            presence: true, numericality: { greater_than: 0 }
  validates :tema_conceded,        presence: true, numericality: { greater_than: 0 }
  
   def win_rate
     @total = team_win.to_f / (team_win + team_lose)
     @total.round(3)
   end
end
