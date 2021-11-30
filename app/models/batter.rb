class Batter < ApplicationRecord
  validates :batter_name,   presence: true
  validates :bat,           presence: true, numericality: { greater_than: 0 }
  validates :rbi,           presence: true, numericality: { greater_than: 0 }
  validates :single,        presence: true, numericality: { greater_than: 0 }
  validates :double,        presence: true, numericality: { greater_than: 0 }
  validates :triple,        presence: true, numericality: { greater_than: 0 }
  validates :homerun,       presence: true, numericality: { greater_than: 0 }
  validates :walks,         presence: true, numericality: { greater_than: 0 }
  validates :dead_ball,     presence: true, numericality: { greater_than: 0 }
  validates :sacrifice_fly, presence: true, numericality: { greater_than: 0 }
  validates :strikeout,     presence: true, numericality: { greater_than: 0 }
  validates :steal,         presence: true, numericality: { greater_than: 0 }
  validates :steal_dead,    presence: true, numericality: { greater_than: 0 }
  validates :runs,          presence: true, numericality: { greater_than: 0 }
end
