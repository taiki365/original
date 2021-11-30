class Pitcher < ApplicationRecord
  validates :pitcher_name,               presence: true
  validates :damage_hit,                 presence: true
  validates :defense,                    presence: true
  validates :win,                        presence: true
  validates :lose,                       presence: true
  validates :conceded,                   presence: true
  validates :damage_homerun,             presence: true
  validates :gave_walks,                 presence: true
  validates :gave_dead_ball,             presence: true
  validates :inning,                     presence: true
  validates :damage_batting_average,     presence: true
  validates :damage_base_percentage,     presence: true
  validates :qs,                         presence: true
  validates :damage_slugging_percentage, presence: true
end
