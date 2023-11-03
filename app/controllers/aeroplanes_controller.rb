class AeroplanesController < ApplicationController
  before_action :set_aeroplane, only: %i[show update destroy]
  before_action :authenticate_user!

  # GET /aeroplanes
  def index
    @aeroplanes = Aeroplane.all

    render json: @aeroplanes
  end

  # GET /aeroplanes/1
  def show
    render json: @aeroplane
  end

  # POST /aeroplanes
  def create
    @aeroplane = Aeroplane.new(aeroplane_params)
    # @aeroplane.user = User.id

    if @aeroplane.save
      render json: @aeroplane, status: :created, location: @aeroplane
    else
      render json: { errors: @aeroplane.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aeroplanes/1
  def update
    if @aeroplane.update(aeroplane_params)
      render json: @aeroplane
    else
      render json: @aeroplane.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aeroplanes/1
  def destroy
    @aeroplane.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_aeroplane
    @aeroplane = Aeroplane.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def aeroplane_params
    params.require(:aeroplane).permit(:name, :model, :image, :description, :number_of_seats, :location, :fee,
                                      :reserved)
  end
end
