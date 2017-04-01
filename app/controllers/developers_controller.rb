class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show]

  # GET /developers/1
  def show
    render json: @developer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer
      @developer = Developer.first
    end

    # Only allow a trusted parameter "white list" through.
    def developer_params
      params.require(:developer).permit(:name, :birthdate, :location, :title, :picture, :pitch)
    end
end
