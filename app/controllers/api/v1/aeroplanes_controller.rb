class Api::V1::AeroplanesController < ApplicationController
  # GET /aeroplanes
  def index
    @aeroplanes = Aeroplane.all

    render json: { aeroplanes: @aeroplanes }
  end

  # GET /aeroplanes/1
  def show
    @aeroplane = Aeroplane.find(params[:id])
    render json: @aeroplane
  end

  def create
    @aeroplane = Aeroplane.new(aeroplane_params)

    if @aeroplane.save
      render json: @aeroplane, status: :created, location: @aeroplane
    else
      render json: @aeroplane.errors, status: :unprocessable_entity
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
    @aeroplane = Aeroplane.find(params[:id])

    if @aeroplane.destroy
      render json: { message: 'Aeroplane deleted successfully' }, status: :no_content
    else
      render json: { error: 'Failed to delete aeroplane' }, status: :unprocessable_entity
    end
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
