class AgeAdjustmentsController < ApplicationController
  before_action :set_age_adjustment, only: [:show, :edit, :update, :destroy]

  # GET /age_adjustments
  # GET /age_adjustments.json
  def index
    @age_adjustments = AgeAdjustment.all
  end

  # GET /age_adjustments/1
  # GET /age_adjustments/1.json
  def show
  end

  # GET /age_adjustments/new
  def new
    @age_adjustment = AgeAdjustment.new
  end

  # GET /age_adjustments/1/edit
  def edit
  end

  # POST /age_adjustments
  # POST /age_adjustments.json
  def create
    @age_adjustment = AgeAdjustment.new(age_adjustment_params)

    respond_to do |format|
      if @age_adjustment.save
        format.html { redirect_to '/admin/setting', notice: 'Age adjustment was successfully created.' }
        format.json { render :show, status: :created, location: @age_adjustment }
      else
        format.html { render :new }
        format.json { render json: @age_adjustment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /age_adjustments/1
  # PATCH/PUT /age_adjustments/1.json
  def update
    respond_to do |format|
      if @age_adjustment.update(age_adjustment_params)
        format.html { redirect_to '/admin/setting', notice: 'Age adjustment was successfully updated.' }
        format.json { render :show, status: :ok, location: @age_adjustment }
      else
        format.html { render :edit }
        format.json { render json: @age_adjustment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /age_adjustments/1
  # DELETE /age_adjustments/1.json
  def destroy
    @age_adjustment.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/setting', notice: 'Age adjustment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_age_adjustment
      @age_adjustment = AgeAdjustment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def age_adjustment_params
      params.require(:age_adjustment).permit(:name, :value)
    end
end
