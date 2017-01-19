require 'test_helper'

class CampainJournalsControllerTest < ActionController::TestCase
  setup do
    @campain_journal = campain_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campain_journals)
  end

  test "should create campain_journal" do
    assert_difference('CampainJournal.count') do
      post :create, campain_journal: { campain_id: @campain_journal.campain_id, description: @campain_journal.description, idactive: @campain_journal.idactive, log_date: @campain_journal.log_date }
    end

    assert_response 201
  end

  test "should show campain_journal" do
    get :show, id: @campain_journal
    assert_response :success
  end

  test "should update campain_journal" do
    put :update, id: @campain_journal, campain_journal: { campain_id: @campain_journal.campain_id, description: @campain_journal.description, idactive: @campain_journal.idactive, log_date: @campain_journal.log_date }
    assert_response 204
  end

  test "should destroy campain_journal" do
    assert_difference('CampainJournal.count', -1) do
      delete :destroy, id: @campain_journal
    end

    assert_response 204
  end
end
