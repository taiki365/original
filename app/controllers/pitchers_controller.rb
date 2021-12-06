class PitchersController < ApplicationController
  before_action :set_pitcher, only: [:edit, :update, :show, :destroy]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]
  def index
    @pitcher = Pitcher.all
  end
  
  def new
    @pitcher = Pitcher.new
  end

  def create
    @pitcher = Pitcher.new(pitcher_params)
    if @pitcher.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @pitcher.update(pitcher_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @pitcher.destroy
    redirect_to action: :index
  end

  private

  def pitcher_params
    params.require(:pitcher).permit(:pitcher_name, :damage_hit, :defense, :win, :lose, :conceded, :damage_homerun, :gave_dead_ball, :gave_walks, :inning, :damage_batting_average ,:damage_base_percentage, :qs, :damage_slugging_percentage)
  end
  
  def set_pitcher
    @pitcher = Pitcher.find(params[:id])
  end

  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end
end