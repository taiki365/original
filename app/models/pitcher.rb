class Pitcher < ApplicationRecord
  validates :pitcher_name,               presence: true
  validates :damage_hit,                 presence: true,numericality: { greater_than: 0 }
  validates :defense,                    presence: true
  validates :win,                        presence: true,numericality: { greater_than: 0 }
  validates :lose,                       presence: true,numericality: { greater_than: 0 }
  validates :conceded,                   presence: true,numericality: { greater_than: 0 }
  validates :damage_homerun,             presence: true,numericality: { greater_than: 0 }
  validates :gave_walks,                 presence: true,numericality: { greater_than: 0 }
  validates :gave_dead_ball,             presence: true,numericality: { greater_than: 0 }
  validates :inning,                     presence: true,numericality: { greater_than: 0 }
  validates :damage_batting_average,     presence: true
  validates :damage_base_percentage,     presence: true
  validates :qs,                         presence: true,numericality: { greater_than: 0 }
  validates :damage_slugging_percentage, presence: true
end
