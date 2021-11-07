module TwebWrapper
  class Client
    BASE_URL = "https://api.timeweb.ru/v1.2/"

    attr_reader :api_key, :api_token

    def initialize(api_token: ENV["TIMEWEB_API_TOKEN"])
      @api_token = api_token
    end

    def account = AccountResource.new(self)

    def api_key   = ENV["TIMEWEB_API_KEY"]
    def username  = ENV["TIMEWEB_USERNAME"]

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = BASE_URL
        conn.request :authorization, :Bearer, api_token

        conn.request :json
        conn.response :json, content_type: "application/json"
        # conn.adapter Faraday.default_adapter
      end
    end
  end
end
