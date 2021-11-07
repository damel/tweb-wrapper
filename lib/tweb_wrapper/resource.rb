module TwebWrapper
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def get_request(url, params: {}, headers: { "x-app-key": client.api_key })
      client.connection.get(url, params, default_headers.merge(headers))
    end

    def default_headers = {}
  end
end
