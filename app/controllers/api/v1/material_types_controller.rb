class API::V1::MaterialTypesController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_material_type, only: [:show, :update, :destroy]

  # GET /material_types
  # GET /material_types.json
  def index
    @material_types = MaterialType.all

    render json: @material_types
  end

  # GET /material_types/1
  # GET /material_types/1.json
  def show
    render json: @material_type
  end

  # POST /material_types
  # POST /material_types.json
  def create
    @material_type = MaterialType.new(material_type_params)

    if @material_type.save
      render json: @material_type, status: :created, location: @material_type
    else
      render json: @material_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /material_types/1
  # PATCH/PUT /material_types/1.json
  def update
    @material_type = MaterialType.find(params[:id])

    if @material_type.update(material_type_params)
      head :no_content
    else
      render json: @material_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /material_types/1
  # DELETE /material_types/1.json
  def destroy
    @material_type.destroy

    head :no_content
  end

  private

    def set_material_type
      @material_type = MaterialType.find(params[:id])
    end

    def material_type_params
      params.require(:material_type).permit(:name)
    end
end
