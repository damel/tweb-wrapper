module TwebWrapper
  class AccountResource < Resource
    def status
      get_request "accounts/#{client.username}/status"
    end
  end
end
