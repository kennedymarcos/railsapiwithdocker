class TemperamentsController < ApplicationController
  before_action :set_temperament, only: [:show, :update, :destroy]

  # GET /temperaments
  def index
    @temperaments = Temperament.all

    render json: @temperaments
  end

  # GET /temperaments/1
  def show
    render json: @temperament
  end

  # POST /temperaments
  def create
    @temperament = Temperament.new(temperament_params)

    if @temperament.save
      render json: @temperament, status: :created, location: @temperament
    else
      render json: @temperament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /temperaments/1
  def update
    if @temperament.update(temperament_params)
      render json: @temperament
    else
      render json: @temperament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /temperaments/1
  def destroy
    @temperament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperament
      @temperament = Temperament.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def temperament_params
      #params.require(:temperament).permit(:name)
      ActiveModelSerializers::Deserialization.jsonapi_parse!(params)
    end
end
