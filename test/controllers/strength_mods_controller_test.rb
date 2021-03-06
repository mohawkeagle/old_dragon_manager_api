require 'test_helper'

class StrengthModsControllerTest < ActionController::TestCase
  setup do
    @strength_mod = strength_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strength_mods)
  end

  test "should create strength_mod" do
    assert_difference('StrengthMod.count') do
      post :create, strength_mod: { attack_mod: @strength_mod.attack_mod, damage_mod: @strength_mod.damage_mod, value: @strength_mod.value }
    end

    assert_response 201
  end

  test "should show strength_mod" do
    get :show, id: @strength_mod
    assert_response :success
  end

  test "should update strength_mod" do
    put :update, id: @strength_mod, strength_mod: { attack_mod: @strength_mod.attack_mod, damage_mod: @strength_mod.damage_mod, value: @strength_mod.value }
    assert_response 204
  end

  test "should destroy strength_mod" do
    assert_difference('StrengthMod.count', -1) do
      delete :destroy, id: @strength_mod
    end

    assert_response 204
  end
end
