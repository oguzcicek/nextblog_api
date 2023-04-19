class Api::V1::GamesController < Api::V1::BaseController

  def index
    game = Game.all
    render json: GameSerializer.new(game).serializable_hash , status: :ok
  end

  def show
    @game = Game.friendly.find(params[:id])
    render json:  GameSerializer.new(@game).serializable_hash, status: :ok
  end

end
