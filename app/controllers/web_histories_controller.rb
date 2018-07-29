class WebHistoriesController < ApplicationController
  before_action :set_web_history, only: [:show, :edit, :update, :destroy]

  # GET /admin/history/
  # GET /admin/history/annual_monthly_check
  # GET /web_wages.json
  def annual_monthly_check
  end

  # GET /web_histories/1
  # GET /web_histories/1.json
  def show
  end

  # GET /web_histories/new
  def new
    @web_history = WebHistory.new
  end

  # GET /web_histories/1/edit
  def edit
  end

  # POST /web_histories
  # POST /web_histories.json
  def create
    @web_history = WebHistory.new(web_history_params)

    respond_to do |format|
      if @web_history.save
        format.html { redirect_to @web_history, notice: 'Web history was successfully created.' }
        format.json { render :show, status: :created, location: @web_history }
      else
        format.html { render :new }
        format.json { render json: @web_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_histories/1
  # PATCH/PUT /web_histories/1.json
  def update
    respond_to do |format|
      if @web_history.update(web_history_params)
        format.html { redirect_to @web_history, notice: 'Web history was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_history }
      else
        format.html { render :edit }
        format.json { render json: @web_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_histories/1
  # DELETE /web_histories/1.json
  def destroy
    @web_history.destroy
    respond_to do |format|
      format.html { redirect_to web_histories_url, notice: 'Web history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_history
      @web_history = WebHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_history_params
      params.fetch(:web_history, {})
    end
end
