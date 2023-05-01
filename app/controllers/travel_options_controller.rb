class TravelOptionsController < ApplicationController
  before_action :set_travel_option, only: %i[ show update destroy ]

  # GET /travel_options
  def index
    @travel_options = TravelOption.all

    render json: @travel_options
  end

  # GET /travel_options/1
  def show
    render json: @travel_option
  end

  # POST /travel_options
  def create
    @travel_option = TravelOption.new(travel_option_params)

    if @travel_option.save
      render json: @travel_option, status: :created, location: @travel_option
    else
      render json: @travel_option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /travel_options/1
  def update
    if @travel_option.update(travel_option_params)
      render json: @travel_option
    else
      render json: @travel_option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /travel_options/1
  def destroy
    @travel_option.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_option
      @travel_option = TravelOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def travel_option_params
      params.fetch(:travel_option, {})
    end
end
