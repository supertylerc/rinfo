#!/usr/bin/env ruby
# encoding: UTF-8
require 'cymruwhois'
class RouteInfo
  attr_reader :asn, :as_name, :country, :cidr, :registry
  def initialize(type)
    @type = type
    if @type == :ip
      @lookup_service = Cymru::IPAddress.new
    else
      @lookup_service = Cymru::ASNumber.new
    end
  end

  def query(q)
    @lookup_service.whois(q)
    @asn = q
    @asn = @lookup_service.asnum if @type == :ip
    @cidr = @lookup_service.cidr if @type == :ip
    @as_name = @lookup_service.asname
    @country = @lookup_service.country
    @registry = @lookup_service.registry
  end
end
