class ItemsController < ApplicationController
  require "base64"
  before_action :set_item, only: %i[ show update destroy ]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    render json: @item
  end

  # POST /items
  # POST /items.json
  def create

    #base64
    # base64_image =
    # File.open(params[:picture], "rb") do |file|
    #   Base64.strict_encode64(file.read)
    # end
    # params[:picture] = 'data:image/png;base64,' + base64_image
    # picture = Paperclip.io_adapters.for(params[:picture]) 
    # picture.original_filename = "ok.jpg"
    # Item.create!(picture: picture)

    @item = Item.new(item_params)

    if @item.save
      render :show, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if @item.update(item_params)
      render :show, status: :ok, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:data).permit(:name, :description, :picture)
      #ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
