class UserSController < ApplicationController
  before_action :set_user_, only: [:show, :edit, :update, :destroy]

  # GET /user_s
  # GET /user_s.json
  def index
    @user_s = User.all
  end

  # GET /user_s/1
  # GET /user_s/1.json
  def show
  end

  # GET /user_s/new
  def new
    @user_ = User.new
  end

  # GET /user_s/1/edit
  def edit
  end

  # POST /user_s
  # POST /user_s.json
  def create
    @user_ = User.new(user__params)

    respond_to do |format|
      if @user_.save
        format.html { redirect_to @user_, notice: 'User  was successfully created.' }
        format.json { render :show, status: :created, location: @user_ }
      else
        format.html { render :new }
        format.json { render json: @user_.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_s/1
  # PATCH/PUT /user_s/1.json
  def update
    respond_to do |format|
      if @user_.update(user__params)
        format.html { redirect_to @user_, notice: 'User  was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_ }
      else
        format.html { render :edit }
        format.json { render json: @user_.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_s/1
  # DELETE /user_s/1.json
  def destroy
    @user_.destroy
    respond_to do |format|
      format.html { redirect_to user_s_url, notice: 'User  was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_
      @user_ = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user__params
      params.require(:user_).permit(:name, :age)
    end
end
