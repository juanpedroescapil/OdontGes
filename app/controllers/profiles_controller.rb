class ProfilesController < ApplicationController
   before_action :authenticate_user!
  def index
    @users = User.page(params[:page])
  end

  def show
    if @user = User.where(username: params[:id]).first
      #@compra_tarje = @user.compra_tarjes.page(params[:page])
    else
      flash[:alert] = 'Profile not found.'
      redirect_to profiles_path
    end
  end
end