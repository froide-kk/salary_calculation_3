class DetailsEmployeeSalariesController < ApplicationController
  before_action :set_details_employee_salary, only: [:show, :edit, :update, :destroy]

  # GET /details_employee_salaries
  # GET /details_employee_salaries.json
  def index
    @details_employee_salaries = DetailsEmployeeSalary.all
  end

  # GET /details_employee_salaries/1
  # GET /details_employee_salaries/1.json
  def show
  end

  # GET /details_employee_salaries/new
  def new
    @details_employee_salary = DetailsEmployeeSalary.new
  end

  # GET /details_employee_salaries/1/edit
  def edit
  end

  # POST /details_employee_salaries
  # POST /details_employee_salaries.json
  def create
    @details_employee_salary = DetailsEmployeeSalary.new(details_employee_salary_params)

    respond_to do |format|
      if @details_employee_salary.save
        format.html { redirect_to @details_employee_salary, notice: 'Details employee salary was successfully created.' }
        format.json { render :show, status: :created, location: @details_employee_salary }
      else
        format.html { render :new }
        format.json { render json: @details_employee_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details_employee_salaries/1
  # PATCH/PUT /details_employee_salaries/1.json
  def update
    respond_to do |format|
      if @details_employee_salary.update(details_employee_salary_params)
        format.html { redirect_to @details_employee_salary, notice: 'Details employee salary was successfully updated.' }
        format.json { render :show, status: :ok, location: @details_employee_salary }
      else
        format.html { render :edit }
        format.json { render json: @details_employee_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details_employee_salaries/1
  # DELETE /details_employee_salaries/1.json
  def destroy
    @details_employee_salary.destroy
    respond_to do |format|
      format.html { redirect_to details_employee_salaries_url, notice: 'Details employee salary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_details_employee_salary
      @details_employee_salary = DetailsEmployeeSalary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def details_employee_salary_params
      params.require(:details_employee_salary).permit(:personal_information_id, :face_salary, :minus_salary, :promotion_rate, :base_salary, :basic_pay, :time_unit_price, :fixed_extra_task_time, :fixed_overtime, :job_ability_grade, :duty_allowance, :duty_allowance_task, :fixed_allowance, :half_year_salary, :last_years_hourly, :hourly_difference, :hourly_difference_percent)
    end
end
