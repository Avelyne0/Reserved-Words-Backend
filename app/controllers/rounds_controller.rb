class RoundsController < ApplicationController
  before_action :find_round, only: [:show, :edit, :update, :destroy]
  
  def index
    rounds = Round.all
    render json: rounds, except: [:updated_at, :created_at]
  end

  def create
    @round = Round.create round_params
    render json: @round, except: [:updated_at, :created_at]
  end

  def show
    render json: @round, except: [:updated_at, :created_at]
  end

  def update
    @round.update round_params
    render json: @round, except: [:updated_at, :created_at]
  end

  def destroy
  end

  private

  def find_round
    @round = Round.find params[:id]
  end

  def round_params
    params.require(:round).permit(:team_id)
  end
end
