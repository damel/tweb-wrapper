# frozen_string_literal: true
require "faraday"
require "faraday_middleware"
require_relative "tweb_wrapper/version"

module TwebWrapper
  autoload :Client, "tweb_wrapper/client"
  autoload :Error, "tweb_wrapper/error"
  autoload :Resource, "tweb_wrapper/resource"

  autoload :AccountResource, "tweb_wrapper/resources/account"
  autoload :DnsResource, "tweb_wrapper/resources/dns"
end
