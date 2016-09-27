class AuthorizationsController < ActionController::API
  def created
    auth_client = Google::APIClient::ClientSecrets.new('web' => {
      client_id: ENV['GOOGLE_CLIENT_ID'],
      client_secret: ENV['GOOGLE_CLIENT_SECRET']
      redirect_url: 'http://localhost:4200/oauth2callback'
      }).to_authorization
      client.grant_type = 'authorization_code'
      client.code = params['authorization_code']
      token - client.fetch_access_token

      client = Google::Apis::Oauth2V2::Oauth2Service.new
      client.authorization = auth_client
      user_info = client.get_userinfo
      
  end
end
