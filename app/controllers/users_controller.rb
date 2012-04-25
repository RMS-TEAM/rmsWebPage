class UsersController < ApplicationController
  def index
    @title = "RMS-Solutions"
    @user = User.new

  end
  def create
    @monda = User.new(params[:user])
    if @monda.save
      flash[:success]="listo mono"
      redirect_to root_path
    else
      flash[:error]="nada mono"
      redirect_to root_path
    end
  end


end
