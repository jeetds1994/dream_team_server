class Api::V1::PlayersController < ApplicationController
  def index
    # render json: Player.all
    paginate json: Player.all, per_page: 1000, each_serializer: PlayerWithoutAttributesSerializer
  end

  def show
    render json: Player.find(params[:id]), include: ['club.players']
    # OR
    # config/initializers/active_model_serializer.rb
    # ActiveModel::Serializer.config.default_includes = '**' # (default '*')

    # Different syntax?
    # /config/initializers.active_model_serializer.rb
    # Line 1 - ActiveModelSerializers.config.default_includes = '**'
  end
end
