class Api::V1::ClubFormationsController < ApplicationController
  def index
    render json: ClubFormation.all
  end

  def create
    current_club_formation = ClubFormation.find_by(club_id: club_formation_params["club_id"], formation_id: club_formation_params["formation_id"])

    if current_club_formation
      # current_club_formation.update(club_formation_params)
      render json: {current_club_formation, message: 'Found your lineup!', status: 201}
    end

    if !current_club_formation
      club_formation = ClubFormation.create(club_formation_params)
      render json: {club_formation, message: 'Saved your lineup!', status: 200}
    end
    puts club_formation_params

    render json: {message: 'Error when trying to create ClubFormation!', status: 400}
  end

  private
  def club_formation_params
    params.require(:club_formation).permit(:club_id, :formation_id, :current_club_formation, :default_club_formation, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11)
  end
end
