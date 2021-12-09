class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show  
    @user = User.find(params[:id])
    @team = @user.team
  
    favorites = Favorite.where(user_id: current_user.id).pluck(:team_id)
    @favorite_list = Team.find(favorites)
    # @favorite_team = @user.favorite_team
  end
end
