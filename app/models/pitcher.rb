class Pitcher < ApplicationRecord
  validates :pitcher_name,               presence: true, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/ }
  validates :damage_hit,                 presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :defense,                    presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :win,                        presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :lose,                       presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :conceded,                   presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :damage_homerun,             presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :gave_walks,                 presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :gave_dead_ball,             presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :inning,                     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :damage_batting_average,     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :damage_base_percentage,     presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :qs,                         presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :damage_slugging_percentage, presence: true, numericality: { greater_than_or_equal_to: 0 }
  
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
