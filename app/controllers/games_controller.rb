class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]

  def index
    games = Game.all
    render json: games, except: [:updated_at, :created_at]
  end

  def create
    game = Game.create
    render json: game, except: [:updated_at, :created_at]
  end

  def show
    render json: game, except: [:updated_at, :created_at]
  end

  def update
    game.update game_params
    render json: game, except: [:updated_at, :created_at]
  end

  def destroy
  end

  private

  def find_game
    game = Game.find params[:id]
  end

  def game_params
    params.require(:game)
  end
end
