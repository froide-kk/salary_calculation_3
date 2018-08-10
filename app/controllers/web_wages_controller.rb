class WebWagesController < ApplicationController
  before_action :set_web_wage, only: [:show, :edit, :update, :destroy]

  def new_wage
    wage = DetailEmployeeSalary.new()

    @personal_informations = PersonalInformation.where("id = ?", params[:employee][:employee_name])
    @detail_employee_salarys = DetailEmployeeSalary.all
    @setting_values = SettingValue.all
    @adjustments = Adjustment.all
    @members = Member.all
    @age_adjustments = AgeAdjustment.all

    @base_salary = 0

    @duty_allowance = 0
    @job_ability_grade = 0
    @duty_allowance_task = 0
    @fixed_allowance = 0
    @fixed_extra_task_time = 0

    @residence_price = 0
    @basic_pay = 0
    @shorter_state = 0
    @time_unit_price = 0
    @fixed_overtime = 0

    @family_allowance = 0
    @face_salary = 0

    @half_year_salary = 0
    @last_years_hourly = 0
    @minus_salary = 0
    @promotion_rate = 0
    @hourly_difference = 0
    @hourly_difference_percent = 0

    @setting_values.each do |setting_value|
      if setting_value.name == 'base_salary'
        @base_salary = setting_value.value.to_i
      end
    end

    @personal_informations.each do |personal_information|
      @job_ability_grade = personal_information.position_grade.job_ability_grade.to_i

      @duty_allowance = personal_information.position_grade.task_grade.to_i
      @duty_allowance_task = personal_information.task.price.to_i
      @fixed_extra_task_time = personal_information.position_grade.task_time.to_i

      @residence_price = personal_information.residence.price.to_i

      ###age_adjustment###
      birth = personal_information.birth
      year = nil
      month = nil
      day  = nil
      birthday = nil
      today = nil
      age = nil

      age_standard = nil
      age_point = nil
      age_adjustment_value = nil

      base_age = personal_information.position_grade.base_age
      price = personal_information.task.price

      year = birth[0,4].to_i
      month = birth[4,2].to_i
      day = birth[6,2].to_i

      birthday = Date.new(year, month, day)
      today = Date.today

      age = today.year.to_i - birthday.year.to_i

      if today <=> birthday
        age = age - 1
      end

      age_standard = age

      if age_standard > 42
        age_standard = 42
      end

      age_point = age_standard - base_age

      if price>0
        age_adjustment_value = 0
      elsif age_point>10
        age_adjustment_value = 10
      elsif age_point<-10
        age_adjustment_value = -10
      else
        age_adjustment_value = age_point
      end
      ####################
      @age_adjustments.each do |age_adjustment|
        @job_ability_grade += (age_adjustment_value * age_adjustment.value)
      end

      @adjustments.each do |adjustment|
        if personal_information.name == adjustment.employee_name
          @job_ability_grade += (adjustment.count.to_i * adjustment.adjustment_type.value.to_i)

          if @duty_allowance > 0
            @fixed_allowance = 0
          else
            @fixed_allowance = 10000
          end

          if adjustment.adjustment_type.name == "shorter_working_hours"
            if adjustment.count.to_i == 1
              @base_salary = @base_salary * 0.75
              @job_ability_grade = @job_ability_grade * 0.75
              @duty_allowance_task = @duty_allowance_task * 0.75
              @fixed_allowance = @fixed_allowance * 0.75

              @fixed_extra_task_time = 0

              @residence_price = @residence_price * 0.75

              @shorter_state = 1
            end
          end
        end
      end
      @basic_pay = @base_salary + @duty_allowance + @job_ability_grade + @duty_allowance_task + @fixed_allowance + @residence_price
      if @shorter_state == 1
        @setting_values.each do |setting_value|
          if setting_value.name == 'short_employee_hours'
            @time_unit_price = @basic_pay / (setting_value.value.to_f).round
          end
        end
      else
        @setting_values.each do |setting_value|
          if setting_value.name == 'ordinary_employee_hours'
            @time_unit_price = (@basic_pay / setting_value.value.to_f).round
          end
        end
      end
      @setting_values.each do |setting_value|
        if setting_value.name == 'extra_task_cost'
          @fixed_overtime = (@time_unit_price * setting_value.value.to_f).round
          @fixed_overtime = @fixed_overtime * @fixed_extra_task_time
        end
      end

      @face_salary = @basic_pay + @fixed_overtime
      @members.each do |member|
        if personal_information.name == member.employee_name
          @family_allowance += (member.count.to_i * member.member_type.price.to_i)
        end
      end

      @face_salary += @family_allowance

      @half_year_salary = @face_salary
      @last_years_hourly = @time_unit_price
      @minus_salary = @face_salary - @half_year_salary
      @promotion_rate = (@minus_salary / @half_year_salary).to_f
      @hourly_difference = @time_unit_price - @last_years_hourly
      @hourly_difference_percent = (@hourly_difference / @time_unit_price).to_f

      wage.personal_information_id = params[:employee][:employee_name]
      wage.basic_pay = @basic_pay
      wage.fixed_overtime = @fixed_overtime
      wage.face_salary = @face_salary
      wage.half_year_salary = @half_year_salary
      wage.base_salary = @base_salary
      wage.duty_allowance = @duty_allowance
      wage.job_ability_grade = @job_ability_grade
      wage.duty_allowance_task = @duty_allowance_task
      wage.fixed_allowance = @fixed_allowance
      wage.fixed_extra_task_time = @fixed_extra_task_time
      wage.time_unit_price = @time_unit_price
      wage.last_years_hourly = @last_years_hourly
      wage.minus_salary = @minus_salary
      wage.promotion_rate = @promotion_rate
      wage.hourly_difference = @hourly_difference
      wage.hourly_difference_percent = @hourly_difference_percent
      wage.family_allowance = @family_allowance
      wage.created_at = Date.civil(params[:new_date][:year].to_i, params[:new_date][:month].to_i, params[:new_date][:day].to_i)

      wage.save
    end
    redirect_to '/admin/wage'
  end

  # GET /admin/wage/
  # GET /admin/wage/wage_management
  def wage_management
    @personal_informations = PersonalInformation.all
    @detail_employee_salarys = DetailEmployeeSalary.all
    @setting_values = SettingValue.all
    @adjustments = Adjustment.all
    @members = Member.all
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
