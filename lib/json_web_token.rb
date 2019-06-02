class JsonWebToken
  
#SECRET_KEY es la clave para codificar y decodificar token. En el código anterior, asignamos una clave secreta que se genera de forma predeterminada por la aplicación de rieles en la variable SECRET_KEY. SECRET_KEY debe ser secreto y no debe compartirse. Cada vez que hacemos una codificación y decodificación utilizando JWT, debemos especificar el SECRET_KEY. 
#Al agrupar y encapsular el mecanismo de codificación y decodificación JWT en esta clase, reduciremos un par de códigos que tienen la responsabilidad de realizar el trabajo de codificación y decodificación, ya que no necesitamos especificar SECRET_KEY en todo momento. 
#La función de decodificación y codificación se define anteriormente como una función estática porque brindará una flexibilidad para realizar trabajos de codificación y decodificación sin instanciar el objeto JsonWebToken.

#La función self.encode tiene 2 parámetros. Primera carga y segunda exp. payload es un objeto clave-valor para retener datos que desean ser codificados. 
#exp representa la caducidad para mantener el token de tiempo de caducidad. Si no se especifica la exp, le dará un valor predeterminado en 24 horas o un día.

#En la función self.decode descodificamos el token que nos dio el usuario y obtenemos el primer valor, luego lo asignamos a la variable descodificada, el primer valor contiene la carga útil que ya habíamos codificado antes y el segundo valor contiene información sobre el algoritmo que usamos para codificar y descifrar el token.
  
  SECRET_KEY = Rails.application.secrets.secret_key_base. to_s

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end
end