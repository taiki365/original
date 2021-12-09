class Team < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :team_name
  belongs_to :favorite, dependent: :destroy 
  belongs_to :user

  validates :game_number,          presence: true
  validates :team_name_id,         presence: true
  validates :team_win,             presence: true
  validates :team_lose,            presence: true
  validates :draw,                 presence: true
  validates :game_difference,      presence: true
  validates :team_defense,         presence: true
  validates :team_batting_average, presence: true
  validates :team_homerun,         presence: true
  validates :team_steal,           presence: true
  validates :team_runs,            presence: true
  validates :tema_conceded,        presence: true
  
  def win_rate
    @total = team_win.to_f / (team_win + team_lose)
    @total.round(3)
  end

  def already_favorited?(user)
   favorites.where(user_id: user.id).exists?
  end
end
