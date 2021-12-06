class BattersController < ApplicationController
  before_action :set_batter, only: [:edit, :update, :show, :destroy]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]

  def index
    @batter = Batter.all
    
  end
  
  def new
    @batter = Batter.new
  end

  def create
    @batter = Batter.new(batter_params)
    
    if @batter.save
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
    if @batter.update(batter_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @batter.destroy
    redirect_to action: :index
  end

  private

  def batter_params
    params.require(:batter).permit(:batter_name, :bat, :rbi, :single, :double, :triple, :homerun, :walks, :dead_ball, :sacrifice_fly, :strikeout, :steal, :steal_dead, :runs)
  end

  def set_batter
    @batter = Batter.find(params[:id])
  end

  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end
end