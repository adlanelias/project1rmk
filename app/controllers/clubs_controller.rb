class ClubsController < ApplicationController
  def index
    @clubs = if params[:sort_by] == "team_name"
      Club.order(:team_name)
    else
    @clubs = Club.all
    end
  end

  def show
    @club = Club.find params[:id]
  end

  def new
    @club = Club.new
  end

  def create
    club = Club.create club_params
    redirect_to club_path(club.id)
  end

  def edit
    @club = Club.find params[:id]
  end

  def update
    club = Club.find params[:id]
    club.update club_params
    redirect_to club_path(club.id)
  end

  def destroy
    club = Club.find params[:id]
    club.destroy
    redirect_to clubs_path
  end

  private
  def club_params
    # Strong parameters: whitelist of sanitized input (stuff that is okay to put in the database)
    params.require(:club).permit(:team_name, :team_rank, :manager, :schedule, :image, :player_id)
  end
end
