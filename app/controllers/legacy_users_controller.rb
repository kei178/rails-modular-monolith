class LegacyUsersController < ApplicationController
  before_action :set_legacy_user, only: [:show, :update, :destroy]

  # GET /legacy_users
  def index
    @legacy_users = LegacyUser.all

    render json: @legacy_users
  end

  # GET /legacy_users/1
  def show
    render json: @legacy_user
  end

  # POST /legacy_users
  def create
    @legacy_user = LegacyUser.new(legacy_user_params)

    if @legacy_user.save
      render json: @legacy_user, status: :created, location: @legacy_user
    else
      render json: @legacy_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /legacy_users/1
  def update
    if @legacy_user.update(legacy_user_params)
      render json: @legacy_user
    else
      render json: @legacy_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /legacy_users/1
  def destroy
    @legacy_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legacy_user
      @legacy_user = LegacyUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legacy_user_params
      params.fetch(:legacy_user, {})
    end
end
