class HeartratesController < ApplicationController
  before_action :set_heartrate, only: [:show, :update, :destroy]

  def test
    render plain: Time.at(1522013520000/1000).to_s
  end
  # GET /heartrates
  def index
    @heartrates = Heartrate.all

    render json: @heartrates
  end

  # GET /heartrates/1
  def show
    render json: @heartrate
  end

  # POST /heartrates
  def create
    @heartrate = Heartrate.new(heartrate_params)

    if @heartrate.save
      render json: @heartrate, status: :created, location: @heartrate
    else
      render json: @heartrate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /heartrates/1
  def update
    if @heartrate.update(heartrate_params)
      render json: @heartrate
    else
      render json: @heartrate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /heartrates/1
  def destroy
    @heartrate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heartrate
      @heartrate = Heartrate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def heartrate_params
      params.require(:heartrate).permit(:time, :value, :patient_id)
    end
end
