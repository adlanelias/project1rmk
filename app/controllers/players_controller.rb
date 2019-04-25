class PlayersController < ApplicationController
  def index
    @players = if params[:sort_by] == "name"
      Player.order(:name)
    else
    @players = Player.all
    end
  end

  def show
    @player = Player.find params[:id]
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.create player_params
    redirect_to player_path(player.id)
  end

  def edit
    @player = Player.find params[:id]
  end

  def update
    player = Player.find params[:id]
    player.update player_params
    redirect_to player_path(player.id)
  end

  def destroy
    player = Player.find params[:id]
    player.destroy
    redirect_to players_path
  end

  private
  def player_params
    # Strong parameters: whitelist of sanitized input (stuff that is okay to put in the database)
    params.require(:player).permit(:name, :country, :dob, :position, :number, :nation_image, :image)
  end
end
