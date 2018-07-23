class ResidenceAllowancesController < ApplicationController
  before_action :set_residence_allowance, only: [:show, :edit, :update, :destroy]

  # GET /residence_allowances
  # GET /residence_allowances.json
  def index
    @residence_allowances = ResidenceAllowance.all
  end

  # GET /residence_allowances/1
  # GET /residence_allowances/1.json
  def show
  end

  # GET /residence_allowances/new
  def new
    @residence_allowance = ResidenceAllowance.new
  end

  # GET /residence_allowances/1/edit
  def edit
  end

  # POST /residence_allowances
  # POST /residence_allowances.json
  def create
    @residence_allowance = ResidenceAllowance.new(residence_allowance_params)

    respond_to do |format|
      if @residence_allowance.save
        format.html { redirect_to @residence_allowance, notice: 'Residence allowance was successfully created.' }
        format.json { render :show, status: :created, location: @residence_allowance }
      else
        format.html { render :new }
        format.json { render json: @residence_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residence_allowances/1
  # PATCH/PUT /residence_allowances/1.json
  def update
    respond_to do |format|
      if @residence_allowance.update(residence_allowance_params)
        format.html { redirect_to @residence_allowance, notice: 'Residence allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @residence_allowance }
      else
        format.html { render :edit }
        format.json { render json: @residence_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residence_allowances/1
  # DELETE /residence_allowances/1.json
  def destroy
    @residence_allowance.destroy
    respond_to do |format|
      format.html { redirect_to residence_allowances_url, notice: 'Residence allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residence_allowance
      @residence_allowance = ResidenceAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residence_allowance_params
      params.require(:residence_allowance).permit(:residence_type, :price)
    end
end
