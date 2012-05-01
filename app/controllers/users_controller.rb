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

  def rderoldan1
    @title = "Ruben"
    @response1 = user_info('rderoldan1')
    @response =  user_repos('rderoldan1')

  end

  def jvelezpo
    @title = "Sebastian"
    @response1 = user_info('jvelezpo')
    @response =  user_repos('jvelezpo')

  end

  def jvidalba1
    @title = "Mateo"
    @response1 = user_info('jvidalba1')
    @response =  user_repos('jvidalba1')
    @response2= HTTParty.get("https://api.github.com/gists/921286")

  end

  private
  def user_info(user)
    HTTParty.get( "https://api.github.com/users/#{user}")
  end

  def user_repos(user)
    HTTParty.get("https://api.github.com/users/#{user}/repos")

  end


end
