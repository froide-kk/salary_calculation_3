class WebLoginsController < ApplicationController
  before_action :set_web_login, only: [:show, :edit, :update, :destroy]

  # GET /admin/login
  # GET /web_logins.json
  def index
    @logins = Login.all
  end

  # GET /web_logins/1
  # GET /web_logins/1.json
  def show
  end

  # GET /web_logins/new
  def new
    @web_login = WebLogin.new
  end

  # GET /web_logins/1/edit
  def edit
  end

  # POST /web_logins
  # POST /web_logins.json
  def create
    @web_login = WebLogin.new(web_login_params)

    respond_to do |format|
      if @web_login.save
        format.html { redirect_to @web_login, notice: 'Web login was successfully created.' }
        format.json { render :show, status: :created, location: @web_login }
      else
        format.html { render :new }
        format.json { render json: @web_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_logins/1
  # PATCH/PUT /web_logins/1.json
  def update
    respond_to do |format|
      if @web_login.update(web_login_params)
        format.html { redirect_to @web_login, notice: 'Web login was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_login }
      else
        format.html { render :edit }
        format.json { render json: @web_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_logins/1
  # DELETE /web_logins/1.json
  def destroy
    @web_login.destroy
    respond_to do |format|
      format.html { redirect_to web_logins_url, notice: 'Web login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_login
      @web_login = WebLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_login_params
      params.fetch(:web_login, {})
    end
end
