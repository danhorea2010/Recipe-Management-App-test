class Api::V1::RecipesController < Api::V1::ApiController
  def index
    render json: {status: 'success'}
  end
end