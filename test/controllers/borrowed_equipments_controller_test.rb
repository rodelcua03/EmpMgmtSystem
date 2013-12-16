require 'test_helper'

class BorrowedEquipmentsControllerTest < ActionController::TestCase
  setup do
    @borrowed_equipment = borrowed_equipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrowed_equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrowed_equipment" do
    assert_difference('BorrowedEquipment.count') do
      post :create, borrowed_equipment: { borrowedDate: @borrowed_equipment.borrowedDate, equipment_id: @borrowed_equipment.equipment_id, returnedDate: @borrowed_equipment.returnedDate }
    end

    assert_redirected_to borrowed_equipment_path(assigns(:borrowed_equipment))
  end

  test "should show borrowed_equipment" do
    get :show, id: @borrowed_equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrowed_equipment
    assert_response :success
  end

  test "should update borrowed_equipment" do
    patch :update, id: @borrowed_equipment, borrowed_equipment: { borrowedDate: @borrowed_equipment.borrowedDate, equipment_id: @borrowed_equipment.equipment_id, returnedDate: @borrowed_equipment.returnedDate }
    assert_redirected_to borrowed_equipment_path(assigns(:borrowed_equipment))
  end

  test "should destroy borrowed_equipment" do
    assert_difference('BorrowedEquipment.count', -1) do
      delete :destroy, id: @borrowed_equipment
    end

    assert_redirected_to borrowed_equipments_path
  end
end
