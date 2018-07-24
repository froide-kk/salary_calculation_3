class PositionGradesController < ApplicationController
  before_action :set_position_grade, only: [:show, :edit, :update, :destroy]

  # GET /position_grades
  # GET /position_grades.json
  def index
    @position_grades = PositionGrade.all
  end

  # GET /position_grades/1
  # GET /position_grades/1.json
  def show
  end

  # GET /position_grades/new
  def new
    @position_grade = PositionGrade.new
  end

  # GET /position_grades/1/edit
  def edit
  end

  # POST /position_grades
  # POST /position_grades.json
  def create
    @position_grade = PositionGrade.new(position_grade_params)

    respond_to do |format|
      if @position_grade.save
        format.html { redirect_to @position_grade, notice: 'Position grade was successfully created.' }
        format.json { render :show, status: :created, location: @position_grade }
      else
        format.html { render :new }
        format.json { render json: @position_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_grades/1
  # PATCH/PUT /position_grades/1.json
  def update
    respond_to do |format|
      if @position_grade.update(position_grade_params)
        format.html { redirect_to @position_grade, notice: 'Position grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_grade }
      else
        format.html { render :edit }
        format.json { render json: @position_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_grades/1
  # DELETE /position_grades/1.json
  def destroy
    @position_grade.destroy
    respond_to do |format|
      format.html { redirect_to position_grades_url, notice: 'Position grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_grade
      @position_grade = PositionGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_grade_params
      params.require(:position_grade).permit(:position_ID, :position_name, :job_ability_grade, :task_time, :task_grade, :base_age, :add_amount)
    end
end
