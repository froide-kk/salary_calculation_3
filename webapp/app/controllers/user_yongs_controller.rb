class UserYongsController < ApplicationController
  before_action :set_user_yong, only: [:show, :edit, :update, :destroy]

  # GET /user_yongs
  # GET /user_yongs.json
  def index
    @user_yongs = UserYong.all
  end

  # GET /user_yongs/1
  # GET /user_yongs/1.json
  def show
  end

  # GET /user_yongs/new
  def new
    @user_yong = UserYong.new
  end

  # GET /user_yongs/1/edit
  def edit
  end

  # POST /user_yongs
  # POST /user_yongs.json
  def create
    @user_yong = UserYong.new(user_yong_params)

    respond_to do |format|
      if @user_yong.save
        format.html { redirect_to @user_yong, notice: 'User yong was successfully created.' }
        format.json { render :show, status: :created, location: @user_yong }
      else
        format.html { render :new }
        format.json { render json: @user_yong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_yongs/1
  # PATCH/PUT /user_yongs/1.json
  def update
    respond_to do |format|
      if @user_yong.update(user_yong_params)
        format.html { redirect_to @user_yong, notice: 'User yong was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_yong }
      else
        format.html { render :edit }
        format.json { render json: @user_yong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_yongs/1
  # DELETE /user_yongs/1.json
  def destroy
    @user_yong.destroy
    respond_to do |format|
      format.html { redirect_to user_yongs_url, notice: 'User yong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_yong
      @user_yong = UserYong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_yong_params
      params.require(:user_yong).permit(:name, :age)
    end
end
