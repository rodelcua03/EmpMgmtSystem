class BorrowedEquipmentsController < ApplicationController
  before_action :set_borrowed_equipment, only: [:show, :edit, :update, :destroy]

  # GET /borrowed_equipments
  # GET /borrowed_equipments.json
  def index
    @borrowed_equipments = BorrowedEquipment.all
  end

  # GET /borrowed_equipments/1
  # GET /borrowed_equipments/1.json
  def show
  end

  # GET /borrowed_equipments/new
  def new
    @borrowed_equipment = BorrowedEquipment.new
  end

  # GET /borrowed_equipments/1/edit
  def edit
  end

  # POST /borrowed_equipments
  # POST /borrowed_equipments.json
  def create
    @borrowed_equipment = BorrowedEquipment.new(borrowed_equipment_params)

    respond_to do |format|
      if @borrowed_equipment.save
        format.html { redirect_to @borrowed_equipment, notice: 'Borrowed equipment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @borrowed_equipment }
      else
        format.html { render action: 'new' }
        format.json { render json: @borrowed_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowed_equipments/1
  # PATCH/PUT /borrowed_equipments/1.json
  def update
    respond_to do |format|
      if @borrowed_equipment.update(borrowed_equipment_params)
        format.html { redirect_to @borrowed_equipment, notice: 'Borrowed equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @borrowed_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowed_equipments/1
  # DELETE /borrowed_equipments/1.json
  def destroy
    @borrowed_equipment.destroy
    respond_to do |format|
      format.html { redirect_to borrowed_equipments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrowed_equipment
      @borrowed_equipment = BorrowedEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borrowed_equipment_params
      params.require(:borrowed_equipment).permit(:equipment_id, :borrowedDate, :returnedDate)
    end
end
