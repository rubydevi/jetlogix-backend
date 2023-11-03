class Api::V1::AeroplanesController < ApplicationController
  # GET /aeroplanes
  def index
    @aeroplanes = Aeroplane.all

    render json: { aeroplanes: @aeroplanes }
  end
end
