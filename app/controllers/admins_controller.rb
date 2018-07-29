class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins/wage
  # GET /admins/wage.json
  def wage
    @details_employee_salarys = DetailsEmployeeSalary.all
  end

  # GET /admins/history
  # GET /admins/history.json
  def history
  end

  # GET /admins/setting
  # GET /admins/setting.json
  def setting
    @setting_values = SettingValue.all
  end

  # GET /admins/setting/edit
  def setting_edit
    @setting_values = SettingValue.all
  end

  # GET /admin/basic_personal_info/
  def basic_personal_info
    @personal_informations = PersonalInformation.all
  end

  # GET /admins/index/2
  def index2
    @members = Member.all
    @memberTypes = MemberType.all
  end

  # GET /admins/index/3
  def index3
    @personal_informations = PersonalInformation.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.fetch(:admin, {})
    end



end
