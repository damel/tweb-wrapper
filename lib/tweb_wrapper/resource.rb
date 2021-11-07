module TwebWrapper
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    private

    def get_request(url, params: {}, headers: {})
      handle_response client.connection.get(url, params, default_headers.merge(headers))
    end

    def post_request(url, body:, headers: {})
      handle_response client.connection.post(url, body, default_headers.merge(headers))
    end

    def delete_request(url, params: {}, headers: {})
      handle_response client.connection.delete(url, params, default_headers.merge(headers))
    end

    def default_headers = { "x-app-key": client.api_key }

    def handle_response(response)
      case response.status
      when 400..499
        # when 400..499 then raise Error, "❌️ #{error_msg}"
        p "❌️ #{response.reason_phrase}."
      end
      response
    end
  end
end
