class UserController < ApplicationController
  def index
    @title = "RMS-Solutions"
    @hola = Contactanos.first
  end

  def create
    @contacto = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Comentario Creado!!!!"
      redirect_to root_path
    else
      @feed_items = current_user.feed
      render 'pages/home'
    end

  end
end
