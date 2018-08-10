class PersonalInfoPdfsController < ApplicationController
  before_action :set_personal_info_pdf, only: [:show, :edit, :update, :destroy]

  # GET /personal_info_pdfs
  # GET /personal_info_pdfs.json
  def index
    @detail_employee_salary = DetailEmployeeSalary.where("id = ?", params[:id])
    @setting_values = SettingValue.all
  end

  # GET /personal_info_pdfs/1
  # GET /personal_info_pdfs/1.json
  def show
  end

  # GET /personal_info_pdfs/new
  def new
    @personal_info_pdf = PersonalInfoPdf.new
  end

  # GET /personal_info_pdfs/1/edit
  def edit
  end

  # POST /personal_info_pdfs
  # POST /personal_info_pdfs.json
  def create
    @personal_info_pdf = PersonalInfoPdf.new(personal_info_pdf_params)

    respond_to do |format|
      if @personal_info_pdf.save
        format.html { redirect_to @personal_info_pdf, notice: 'Personal info pdf was successfully created.' }
        format.json { render :show, status: :created, location: @personal_info_pdf }
      else
        format.html { render :new }
        format.json { render json: @personal_info_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_info_pdfs/1
  # PATCH/PUT /personal_info_pdfs/1.json
  def update
    respond_to do |format|
      if @personal_info_pdf.update(personal_info_pdf_params)
        format.html { redirect_to @personal_info_pdf, notice: 'Personal info pdf was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_info_pdf }
      else
        format.html { render :edit }
        format.json { render json: @personal_info_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_info_pdfs/1
  # DELETE /personal_info_pdfs/1.json
  def destroy
    @personal_info_pdf.destroy
    respond_to do |format|
      format.html { redirect_to personal_info_pdfs_url, notice: 'Personal info pdf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_info_pdf
      @personal_info_pdf = PersonalInfoPdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_info_pdf_params
      params.fetch(:personal_info_pdf, {})
    end
end
