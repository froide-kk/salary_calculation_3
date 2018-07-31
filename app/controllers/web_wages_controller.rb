class WebWagesController < ApplicationController
  before_action :set_web_wage, only: [:show, :edit, :update, :destroy]

  # GET /admin/wage/
  # GET /admin/wage/wage_management
  def wage_management
    @personal_informations = PersonalInformation.all
    @detail_employee_salarys = DetailEmployeeSalary.all
    @setting_values = SettingValue.all
    @adjustments = Adjustment.all
  end

  # GET /admin/wage/
  # GET /admin/wage/wage_management
  def age_info
    @personal_informations = PersonalInformation.all
  end

  # GET /admin/wage/
  # GET /admin/wage/adjustment_values_info
  def adjustment_values_info
    @adjustment_types = AdjustmentType.all
    @adjustments = Adjustment.all
  end

  # GET /web_wages/1
  # GET /web_wages/1.json
  def show
  end

  # GET /web_wages/new
  def new
    @web_wage = WebWage.new
  end

  # GET /web_wages/1/edit
  def edit
  end

  # POST /web_wages
  # POST /web_wages.json
  def create
    @web_wage = WebWage.new(web_wage_params)

    respond_to do |format|
      if @web_wage.save
        format.html { redirect_to @web_wage, notice: 'Web wage was successfully created.' }
        format.json { render :show, status: :created, location: @web_wage }
      else
        format.html { render :new }
        format.json { render json: @web_wage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_wages/1
  # PATCH/PUT /web_wages/1.json
  def update
    respond_to do |format|
      if @web_wage.update(web_wage_params)
        format.html { redirect_to @web_wage, notice: 'Web wage was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_wage }
      else
        format.html { render :edit }
        format.json { render json: @web_wage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_wages/1
  # DELETE /web_wages/1.json
  def destroy
    @web_wage.destroy
    respond_to do |format|
      format.html { redirect_to web_wages_url, notice: 'Web wage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_wage
      @web_wage = WebWage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_wage_params
      params.fetch(:web_wage, {})
    end
end
