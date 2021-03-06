class API::V1::CharactersController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_character, only: [:show, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    if params[:user_id]
      @characters = Character.where(user_id: params[:user_id])
    else
      @characters = get_current_user.characters
    end
    render json: @characters
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    render json: @character, include: [
      '*', campaigns: [:dungeonMaster], status: [:alignment]
    ]
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      @character.journals.where(active: true).update_all(active: false)
      head :no_content
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy

    head :no_content
  end

  private

    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :title, :weight, :height, :age, 
        :description, :character_class_id, :character_race_id, :user_id)
    end
end
