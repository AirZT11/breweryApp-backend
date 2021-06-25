class ApplicationController < ActionController::API
  def encode_token(payload)
    # payload is user_id
    # returns a unique JWT token
    JWT.encode(payload, 'secret', 'HS256')
  end

  def decode_token(token)
    # takes in a JWT token from client and return user_id
    JWT.decode(token, 'secret', true, {algorithm: 'HS256'})[0]
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end
end
