class CharacterRaceArmorsController < ApplicationController
  before_action :set_character_race_armor, only: [:show, :update, :destroy]

  # GET /character_race_armors
  # GET /character_race_armors.json
  def index
    @character_race_armors = CharacterRaceArmor.all

    render json: @character_race_armors
  end

  # GET /character_race_armors/1
  # GET /character_race_armors/1.json
  def show
    render json: @character_race_armor
  end

  # POST /character_race_armors
  # POST /character_race_armors.json
  def create
    @character_race_armor = CharacterRaceArmor.new(character_race_armor_params)

    if @character_race_armor.save
      render json: @character_race_armor, status: :created, location: @character_race_armor
    else
      render json: @character_race_armor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_race_armors/1
  # PATCH/PUT /character_race_armors/1.json
  def update
    @character_race_armor = CharacterRaceArmor.find(params[:id])

    if @character_race_armor.update(character_race_armor_params)
      head :no_content
    else
      render json: @character_race_armor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_race_armors/1
  # DELETE /character_race_armors/1.json
  def destroy
    @character_race_armor.destroy

    head :no_content
  end

  private

    def set_character_race_armor
      @character_race_armor = CharacterRaceArmor.find(params[:id])
    end

    def character_race_armor_params
      params.require(:character_race_armor).permit(:armor_type_id, :character_race_id)
    end
end
