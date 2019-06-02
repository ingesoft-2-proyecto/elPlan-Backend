class ApplicationController < ActionController::API
    
  
  #La función authorize_request tiene la responsabilidad de autorizar la solicitud del usuario. Primero necesitamos obtener el token en el encabezado con la "Autorización" como clave. con este token ahora podemos decodificar y obtener el valor de la carga útil. En esta aplicación definimos user_id en payload. 
  #No debe incluir los datos de las credenciales de usuario en la carga útil, ya que causará un problema de seguridad; puede incluir los datos necesarios para autorizar al usuario. Al realizar la función JsonWebToken.decode, devolverá JWT :: DecodeError si hubo un error, ya que el token caducó, el token no es válido, falta el token, etc. 
  #Después de que obtengamos user_id de la carga útil, intentaremos encontrarlo por id y asignarlo en current_user variable, si el usuario no existe, devolverá ActiveRecord :: RecordNotFound y mostrará un mensaje de error con el estado http no autorizado.
  
  def not_found
    render json: { error: 'not_found' }
  end
  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
  
end
