class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]
  
  def index
    teams = Team.all
    render json: teams, except: [:updated_at, :created_at]
  end

  def create
    @team = Team.create team_params
    render json: @team, except: [:updated_at, :created_at]
  end

  def show
    render json: @team, except: [:updated_at, :created_at]
  end

  def update
    @team.update team_params
    render json: @team, except: [:updated_at, :created_at]
  end

  def destroy
  end

  private

  def find_team
    @team = Team.find params[:id]
  end

  def team_params
    params.require(:team).permit(:game_id, :score)
  end
end
