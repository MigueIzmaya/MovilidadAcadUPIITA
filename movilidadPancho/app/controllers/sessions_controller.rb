class SessionsController < ApplicationController
    layout "index"
  def new
  end

  def create
        
      student = Student.where({boleta: params[:session][:boleta], contrasena: params[:session][:contrasena]}).first   
      
      if student != nil
          puts "Ya entró"
          session[:current_user_id] = student.id
          puts session[:current_user_id]
          redirect_to root_url
      else
          puts "Renderizo"
          flash[:notice] = "Usuario o contraseña incorrectos"
          render 'new'
      end
  end

  def destroy
      # Remove the user id from the session
    @_current_user = session[:current_user_id] = nl
    redirect_to root_url
      end
end