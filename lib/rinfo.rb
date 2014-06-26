#!/usr/bin/env ruby
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
    self.get_asn q
    self.get_cidr if @type == :ip
    self.get_as_name
    self.get_country
    self.get_registry
  end

  def get_asn(q)
    if @type == :ip
      @asn = @lookup_service.asnum
    else
      @asn = q
    end
  end

  def get_as_name
    @as_name = @lookup_service.asname
  end

  def get_country
    @country = @lookup_service.country
  end

  def get_cidr
    @cidr = @lookup_service.cidr
  end

  def get_registry
    @registry = @lookup_service.registry
  end
end
