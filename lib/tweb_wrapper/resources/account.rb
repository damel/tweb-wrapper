module TwebWrapper
  class AccountResource < Resource
    def status
      get_request "status"
    end
  end
end
