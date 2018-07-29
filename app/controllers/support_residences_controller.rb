class SupportResidencesController < ApplicationController
  before_action :set_support_residence, only: [:show, :edit, :update, :destroy]

  # GET /support_residences
  # GET /support_residences.json
  def index
    @support_residences = SupportResidence.all
  end

  # GET /support_residences/1
  # GET /support_residences/1.json
  def show
  end

  # GET /support_residences/new
  def new
    @support_residence = SupportResidence.new
  end

  # GET /support_residences/1/edit
  def edit
  end

  # POST /support_residences
  # POST /support_residences.json
  def create
    @support_residence = SupportResidence.new(support_residence_params)

    respond_to do |format|
      if @support_residence.save
        format.html { redirect_to @support_residence, notice: 'Support residence was successfully created.' }
        format.json { render :show, status: :created, location: @support_residence }
      else
        format.html { render :new }
        format.json { render json: @support_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_residences/1
  # PATCH/PUT /support_residences/1.json
  def update
    respond_to do |format|
      if @support_residence.update(support_residence_params)
        format.html { redirect_to @support_residence, notice: 'Support residence was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_residence }
      else
        format.html { render :edit }
        format.json { render json: @support_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_residences/1
  # DELETE /support_residences/1.json
  def destroy
    @support_residence.destroy
    respond_to do |format|
      format.html { redirect_to "/admin/personal/monthly_rent_support_info", notice: 'Support residence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_residence
      @support_residence = SupportResidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_residence_params
      params.require(:support_residence).permit(:personal_information_id, :name, :price, :start_month)
    end
end
