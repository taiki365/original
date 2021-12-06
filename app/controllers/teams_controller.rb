class TeamsController < ApplicationController
  before_action :set_team, only: [:edit, :update, :show, :destroy]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]

  def index
    @team = Team.all.order(team_win: 'DESC')
  end
  
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    # binding.pry
    if @team.save
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
    if @team.update(team_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to action: :index
  end

  private

  def team_params
    params.require(:team).permit(:team_name_id, :game_number, :team_win, :team_lose, :draw, :game_difference, :team_defense, :team_batting_average, :team_homerun, :team_steal, :team_runs, :tema_conceded)
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
