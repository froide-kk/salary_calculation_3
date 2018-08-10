class PersonalInformationsController < ApplicationController
  before_action :set_personal_information, only: [:show, :edit, :update, :destroy]
  # GET /personal_informations
  # GET /personal_informations.json
  def index
    @personal_informations = PersonalInformation.all
  end

  # GET /personal_informations/1
  # GET /personal_informations/1.json
  def show
  end

  # GET /personal_informations/new
  def new
    @personal_information = PersonalInformation.new
    @departments = Department.all
    @position_grades = PositionGrade.all
    @tasks = Task.all
    @residences = Residence.all
  end

  # GET /personal_informations/1/edit
  def edit
    @departments = Department.all
    @position_grades = PositionGrade.all
    @tasks = Task.all
    @residences = Residence.all
  end

  # POST /personal_informations
  # POST /personal_informations.json
  def create
    @personal_information = PersonalInformation.new(personal_information_params)

    respond_to do |format|
      if @personal_information.save
        format.html { redirect_to '/admin/personal', notice: 'Personal information was successfully created.' }
        format.json { render :show, status: :created, location: @personal_information }
      else
        format.html { render :new }
        format.json { render json: @personal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_informations/1
  # PATCH/PUT /personal_informations/1.json
  def update
    respond_to do |format|
      if @personal_information.update(personal_information_params)
        format.html { redirect_to '/admin/personal', notice: 'Personal information was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_information }
      else
        format.html { render :edit }
        format.json { render json: @personal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_informations/1
  # DELETE /personal_informations/1.json
  def destroy
    @personal_information.destroy
    respond_to do |format|
      format.html { redirect_to "/admin/personal/basic_personal_info", notice: 'Personal information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_information
      @personal_information = PersonalInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_information_params
      params.require(:personal_information).permit(:employee_id, :name, :department_id, :position_grade_id, :task_id, :birth, :age_group_id, :insurance, :residence_id, :join_date, :date)
    end
end
