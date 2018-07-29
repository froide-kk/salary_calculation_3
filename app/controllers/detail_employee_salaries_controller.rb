class DetailEmployeeSalariesController < ApplicationController
  before_action :set_detail_employee_salary, only: [:show, :edit, :update, :destroy]

  # GET /detail_employee_salaries
  # GET /detail_employee_salaries.json
  def index
    @detail_employee_salaries = DetailEmployeeSalary.all
  end

  # GET /detail_employee_salaries/1
  # GET /detail_employee_salaries/1.json
  def show
  end

  # GET /detail_employee_salaries/new
  def new
    @detail_employee_salary = DetailEmployeeSalary.new
  end

  # GET /detail_employee_salaries/1/edit
  def edit
  end

  # POST /detail_employee_salaries
  # POST /detail_employee_salaries.json
  def create
    @detail_employee_salary = DetailEmployeeSalary.new(detail_employee_salary_params)

    respond_to do |format|
      if @detail_employee_salary.save
        format.html { redirect_to @detail_employee_salary, notice: 'Detail employee salary was successfully created.' }
        format.json { render :show, status: :created, location: @detail_employee_salary }
      else
        format.html { render :new }
        format.json { render json: @detail_employee_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_employee_salaries/1
  # PATCH/PUT /detail_employee_salaries/1.json
  def update
    respond_to do |format|
      if @detail_employee_salary.update(detail_employee_salary_params)
        format.html { redirect_to @detail_employee_salary, notice: 'Detail employee salary was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_employee_salary }
      else
        format.html { render :edit }
        format.json { render json: @detail_employee_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_employee_salaries/1
  # DELETE /detail_employee_salaries/1.json
  def destroy
    @detail_employee_salary.destroy
    respond_to do |format|
      format.html { redirect_to detail_employee_salaries_url, notice: 'Detail employee salary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_employee_salary
      @detail_employee_salary = DetailEmployeeSalary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_employee_salary_params
      params.require(:detail_employee_salary).permit(:personal_information_id, :face_salary, :minus_salary, :promotion_rate, :base_salary, :basic_pay, :time_unit_price, :fixed_extra_task_time, :fixed_overtime, :job_ability_grade, :duty_allowance, :duty_allowance_task, :fixed_allowance, :half_year_salary, :last_years_hourly, :hourly_difference, :hourly_difference_percent)
    end
end
