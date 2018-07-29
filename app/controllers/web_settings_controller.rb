class WebSettingsController < ApplicationController
  before_action :set_web_setting, only: [:show, :edit, :update, :destroy]

  # GET /admin/setting/
  # GET /web_settings.json
  def index
    @setting_values = SettingValue.all
    @position_grades = PositionGrade.all
    @tasks = Task.all
    @member_types = MemberType.all
    @residences = Residence.all
    @adjustment_types = AdjustmentType.all
    @departments = Department.all
    @logins = Login.all
  end
end
