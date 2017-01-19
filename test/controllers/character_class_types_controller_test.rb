require 'test_helper'

class CharacterClassTypesControllerTest < ActionController::TestCase
  setup do
    @character_class_type = character_class_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_types)
  end

  test "should create character_class_type" do
    assert_difference('CharacterClassType.count') do
      post :create, character_class_type: { can_bane_undead: @character_class_type.can_bane_undead, has_thief_talents: @character_class_type.has_thief_talents, key_attr: @character_class_type.key_attr, magic: @character_class_type.magic, name: @character_class_type.name, protection: @character_class_type.protection }
    end

    assert_response 201
  end

  test "should show character_class_type" do
    get :show, id: @character_class_type
    assert_response :success
  end

  test "should update character_class_type" do
    put :update, id: @character_class_type, character_class_type: { can_bane_undead: @character_class_type.can_bane_undead, has_thief_talents: @character_class_type.has_thief_talents, key_attr: @character_class_type.key_attr, magic: @character_class_type.magic, name: @character_class_type.name, protection: @character_class_type.protection }
    assert_response 204
  end

  test "should destroy character_class_type" do
    assert_difference('CharacterClassType.count', -1) do
      delete :destroy, id: @character_class_type
    end

    assert_response 204
  end
end
