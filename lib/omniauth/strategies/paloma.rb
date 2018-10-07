require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Paloma < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "paloma"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        site: "https://baum-stage.paloma.one/",
        authorize_url: "https://baum-stage.paloma.one/users/oauth/authorize",
        token_url: "https://baum-stage.paloma.one/users/oauth/token"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid { raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['user_name'],
          user_name: raw_info['user_name'],
          roles: roles
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= JWT.decode(access_token.token, nil, false).first
      end

      def roles
        roles = raw_info["applicationAuthorities"].first
        roles = roles["authorities"] if roles
        roles.presence
      end
    end
  end
end
