class Batter < ApplicationRecord
  belongs_to :favorite, dependent: :destroy 

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

  def base_hit
    hit2 = self.double * 2
    hit3 = self.triple * 3
    hit4 = self.homerun * 4
    @total = self.single + hit2 + hit3 + hit4
  end

  def hits
    @total = self.single + self.double + self.triple + self.homerun
  end

  def batting_avarage
    @total = hits.to_f / self.bat
    @total.round(3)
  end
  
  def on_base_percentage
    point1 = hits + self.walks + self.dead_ball
    point2 = self.bat + self.walks + self.dead_ball + self.sacrifice_fly
    @total = point1 / point2
    @total.round(3)
  end

  def slugging_percentage
    @total = base_hit.to_f / self.bat
    @total.round(3)
  end

  def ops
    @total = slugging_percentage.to_f + on_base_percentage
    @total.round(3)
  end

  def noi
    @total = (on_base_percentage + slugging_percentage) / 3 * 1000
    @total.round(2)
  end

  def gpa
    @total = ((on_base_percentage * 1.8) + slugging_percentage) / 4
    @total.round(3)
  end

  def isod
    @total = on_base_percentage - batting_avarage
    @total.round(2)
  end

  def isop
    @total = slugging_percentage - batting_avarage
    @total.round(3)
  end

  def babip
    @total = (hits + walks).to_f / (bat - strikeout - homerun + sacrifice_fly)
    @total.round(3)
  end

  def bbk
    @total = walks.to_f / strikeout
    @total.round(2)
  end

  def pak
    @total = bat.to_f / strikeout
    @total.round(2)
  end

  def abhr
    @total = bat.to_f / homerun
    @total.round(3)
  end

  def rc
    @total = (hits + walks).to_f * base_hit / (bat + walks)
    @total.round(2)
  end

  def seca
    @total = (base_hit - hits + walks + steal - steal_dead).to_f / bat
    @total.round(3)
  end
end