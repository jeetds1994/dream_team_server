class Api::V1::SquadsController < ApplicationController
  def index
    render json: Squad.all
  end
end
