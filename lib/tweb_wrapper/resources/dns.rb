module TwebWrapper
  class DnsResource < Resource
    def create_record(domain, **attributes)
      post_request("domains/#{domain}/user-records/", body: attributes)
    end

    def delete_record(domain, idrecords:)
      delete_request("domains/#{domain}/user-records/#{idrecords}")
      # true
    end
  end
end
