class Api::V1::ClubsController < ApplicationController
  def index
    # render json: Club.all
    paginate json: Club.all, per_page: 25
  end

  def show
    render json: Club.find(params[:id])
  end
end
