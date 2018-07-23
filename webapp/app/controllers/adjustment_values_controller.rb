class AdjustmentValuesController < ApplicationController
  before_action :set_adjustment_value, only: [:show, :edit, :update, :destroy]

  # GET /adjustment_values
  # GET /adjustment_values.json
  def index
    @adjustment_values = AdjustmentValue.all
  end

  # GET /adjustment_values/1
  # GET /adjustment_values/1.json
  def show
  end

  # GET /adjustment_values/new
  def new
    @adjustment_value = AdjustmentValue.new
  end

  # GET /adjustment_values/1/edit
  def edit
  end

  # POST /adjustment_values
  # POST /adjustment_values.json
  def create
    @adjustment_value = AdjustmentValue.new(adjustment_value_params)

    respond_to do |format|
      if @adjustment_value.save
        format.html { redirect_to @adjustment_value, notice: 'Adjustment value was successfully created.' }
        format.json { render :show, status: :created, location: @adjustment_value }
      else
        format.html { render :new }
        format.json { render json: @adjustment_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adjustment_values/1
  # PATCH/PUT /adjustment_values/1.json
  def update
    respond_to do |format|
      if @adjustment_value.update(adjustment_value_params)
        format.html { redirect_to @adjustment_value, notice: 'Adjustment value was successfully updated.' }
        format.json { render :show, status: :ok, location: @adjustment_value }
      else
        format.html { render :edit }
        format.json { render json: @adjustment_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adjustment_values/1
  # DELETE /adjustment_values/1.json
  def destroy
    @adjustment_value.destroy
    respond_to do |format|
      format.html { redirect_to adjustment_values_url, notice: 'Adjustment value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adjustment_value
      @adjustment_value = AdjustmentValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adjustment_value_params
      params.require(:adjustment_value).permit(:adjustment_list, :value)
    end
end
