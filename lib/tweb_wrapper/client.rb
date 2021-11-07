module TwebWrapper
  class Client
    attr_reader :api_token, :username

    def initialize(api_token:, username:)
      @api_token = api_token
      @username = username
    end

    def account = AccountResource.new(self)
    def dns     = DnsResource.new(self)

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = base_url
        conn.request :authorization, :Bearer, api_token
        conn.request :json
        conn.response :json, content_type: "application/json"
        conn.adapter Faraday.default_adapter
      end
    end

    def api_key = ENV["TIMEWEB_API_KEY"]

    private

    def base_url = "https://api.timeweb.ru/v1.2/accounts/#{username}/"
  end
end
