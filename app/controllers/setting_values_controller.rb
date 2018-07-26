class SettingValuesController < ApplicationController
  before_action :set_setting_value, only: [:show, :edit, :update, :destroy]

  # GET /setting_values
  # GET /setting_values.json
  def index
    @setting_values = SettingValue.all
  end

  # GET /setting_values/1
  # GET /setting_values/1.json
  def show
  end

  # GET /setting_values/new
  def new
    @setting_value = SettingValue.new
  end

  # GET /setting_values/1/edit
  def edit
  end

  # POST /setting_values
  # POST /setting_values.json
  def create
    @setting_value = SettingValue.new(setting_value_params)

    respond_to do |format|
      if @setting_value.save
        format.html { redirect_to @setting_value, notice: 'Setting value was successfully created.' }
        format.json { render :show, status: :created, location: @setting_value }
      else
        format.html { render :new }
        format.json { render json: @setting_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setting_values/1
  # PATCH/PUT /setting_values/1.json
  def update
    respond_to do |format|
      if @setting_value.update(setting_value_params)
        format.html { redirect_to @setting_value, notice: 'Setting value was successfully updated.' }
        format.json { render :show, status: :ok, location: @setting_value }
      else
        format.html { render :edit }
        format.json { render json: @setting_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setting_values/1
  # DELETE /setting_values/1.json
  def destroy
    @setting_value.destroy
    respond_to do |format|
      format.html { redirect_to setting_values_url, notice: 'Setting value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting_value
      @setting_value = SettingValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_value_params
      params.require(:setting_value).permit(:name, :value, :year)
    end
end
