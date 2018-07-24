class FamilyAllowancesController < ApplicationController
  before_action :set_family_allowance, only: [:show, :edit, :update, :destroy]

  # GET /family_allowances
  # GET /family_allowances.json
  def index
    @family_allowances = FamilyAllowance.all
  end

  # GET /family_allowances/1
  # GET /family_allowances/1.json
  def show
  end

  # GET /family_allowances/new
  def new
    @family_allowance = FamilyAllowance.new
  end

  # GET /family_allowances/1/edit
  def edit
  end

  # POST /family_allowances
  # POST /family_allowances.json
  def create
    @family_allowance = FamilyAllowance.new(family_allowance_params)

    respond_to do |format|
      if @family_allowance.save
        format.html { redirect_to @family_allowance, notice: 'Family allowance was successfully created.' }
        format.json { render :show, status: :created, location: @family_allowance }
      else
        format.html { render :new }
        format.json { render json: @family_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_allowances/1
  # PATCH/PUT /family_allowances/1.json
  def update
    respond_to do |format|
      if @family_allowance.update(family_allowance_params)
        format.html { redirect_to @family_allowance, notice: 'Family allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_allowance }
      else
        format.html { render :edit }
        format.json { render json: @family_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_allowances/1
  # DELETE /family_allowances/1.json
  def destroy
    @family_allowance.destroy
    respond_to do |format|
      format.html { redirect_to family_allowances_url, notice: 'Family allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_allowance
      @family_allowance = FamilyAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_allowance_params
      params.require(:family_allowance).permit(:family_type, :price)
    end
end
