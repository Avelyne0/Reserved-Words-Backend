class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]
  
  def index
    teams = Team.all
    render json: teams, except: [:updated_at, :created_at]
  end

  def create
    @team1 = Team.create(game_id: params[:team1][:game_id])
    params[:team1].each do |key, user|
      if user != params[:team1][:game_id]
      User.create(name: user, team_id: @team1.id)
      end
    end
    @team2 = Team.create(game_id: params[:team2][:game_id])
    params[:team2].each do |key, user|
      if user != params[:team2][:game_id]
        User.create(name: user, team_id: @team2.id)
      end
    end
    render json: {"teams":[TeamSerializer.new(@team1), TeamSerializer.new(@team2)], "userCount":((@team1.users.length > @team2.users.length) ? (@team1.users.length * 2) : (@team2.users.length * 2) )}
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
