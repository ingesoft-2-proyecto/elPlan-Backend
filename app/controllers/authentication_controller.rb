class AuthenticationController < ApplicationController
    
#En JWT no hay forma de invalidar el token, puede utilizar uno de estos métodos para implementar la función de cierre de sesión:
#1. Elimine el token del cliente, pero el token sigue siendo válido, en mi opinión, debe usar el token de período de tiempo corto.
#2. Agregar token a la lista negra, cuando el token agregado a la lista negra aún es válido hasta la fecha de vencimiento, pero puede negar que esta solicitud acceda al recurso.

  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    print ("este es el usuario encontrado")
    print (@user)
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                     username: @user.username }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
    
end
