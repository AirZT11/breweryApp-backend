class ApplicationController < ActionController::API
  def encode_token(payload)
    # payload is user_id
    # returns a unique JWT token
    JWT.encode(payload, ENV["JWT_SECRET"], 'HS256')
  end

  def decode_token(token)
    # takes in a JWT token from client and return user_id
    JWT.decode(token, ENV["JWT_SECRET"], true, {algorithm: 'HS256'})[0]
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end
end
