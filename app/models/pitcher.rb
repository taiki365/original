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
  
  def damage_ops
    @total = (damage_base_percentage + damage_slugging_percentage)
    @total.round(3)
  end

  def lob
    @total = (damage_hit + gave_walks + gave_dead_ball - conceded) / ((damage_hit + gave_dead_ball + gave_walks - 1.4) * damage_homerun)
    @total.round(2)
  end

  def bb9
    @total = gave_walks.to_f / inning * 9
    @total.round(2)
  end

  def hr9
    @total = damage_homerun.to_f / inning * 9
    @total.round(2)
  end

  def whip
    @total = (gave_walks + damage_hit).to_f / inning
    @total.round(2)
  end
end
