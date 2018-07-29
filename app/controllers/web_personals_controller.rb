class WebPersonalsController < ApplicationController
  before_action :set_web_personal, only: [:show, :edit, :update, :destroy]

  # GET /admin/basic_personal_info/
  def basic_personal_info
    @personal_informations = PersonalInformation.all
  end

  # GET /admin/family_info/
  def family_info
    @members = Member.all
    @member_types = MemberType.all
  end

  # GET /admin/monthly_rent_support_info/
  def monthly_rent_support_info
    @support_residences = SupportResidence.all
  end

  # GET /web_personals/1
  # GET /web_personals/1.json
  def show
  end

  # GET /web_personals/new
  def new
    @web_personal = WebPersonal.new
  end

  # GET /web_personals/1/edit
  def edit
  end

  # POST /web_personals
  # POST /web_personals.json
  def create
    @web_personal = WebPersonal.new(web_personal_params)

    respond_to do |format|
      if @web_personal.save
        format.html { redirect_to @web_personal, notice: 'Web personal was successfully created.' }
        format.json { render :show, status: :created, location: @web_personal }
      else
        format.html { render :new }
        format.json { render json: @web_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_personals/1
  # PATCH/PUT /web_personals/1.json
  def update
    respond_to do |format|
      if @web_personal.update(web_personal_params)
        format.html { redirect_to @web_personal, notice: 'Web personal was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_personal }
      else
        format.html { render :edit }
        format.json { render json: @web_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_personals/1
  # DELETE /web_personals/1.json
  def destroy
    @web_personal.destroy
    respond_to do |format|
      format.html { redirect_to web_personals_url, notice: 'Web personal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_personal
      @web_personal = WebPersonal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_personal_params
      params.fetch(:web_personal, {})
    end
end
