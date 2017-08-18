class Api::V1::ClubFormationsController < ApplicationController
  def index
    render json: ClubFormation.all
  end

  def create
    byebug
    current_club_formation = ClubFormation.find_by(club_id: club_formation_params["club_id"], formation_id: club_formation_params["formation_id"])
    if current_club_formation
      current_club_formation.update(club_formation_params)
    end

    if !current_club_formation
      club_formation = ClubFormation.create(club_id: club_formation_params["club_id"],
                                            formation_id: club_formation_params["formation_id"],
                                            current_club_formation: club_formation_params["current_club_formation"],
                                            default_club_formation: club_formation_params["default_club_formation"],
                                            player_1: club_formation_params["player_1"],
                                            player_2: club_formation_params["player_2"],
                                            player_3: club_formation_params["player_3"],
                                            player_4: club_formation_params["player_4"],
                                            player_5: club_formation_params["player_5"],
                                            player_6: club_formation_params["player_6"],
                                            player_7: club_formation_params["player_7"],
                                            player_8: club_formation_params["player_8"],
                                            player_9: club_formation_params["player_9"],
                                            player_10: club_formation_params["player_10"],
                                            player_11: club_formation_params["player_11"])
    end

    render json: {message: 'saved lineup', status: 200}
  end

  private
  def club_formation_params
    params.require(:club_formation).permit(:club_id, :formation_id, :current_club_formation, :default_club_formation, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11)
  end
end
