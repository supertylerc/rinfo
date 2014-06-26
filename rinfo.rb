#!/usr/bin/env ruby
# encoding: UTF-8
require_relative 'lib/rinfo'
require 'trollop'

opts = Trollop::options do
  opt :type, "IP or ASN", :type => :string
  opt :query, "", :type => :string
end

abort "Must specify type.  Type must be `ip` or `asn`." unless opts[:type]
abort "Query is required.  " +
  "Query must be IP address or Autonomous System Number." unless opts[:query]

opts[:type] = opts[:type].to_sym

route_info = RouteInfo.new opts[:type]
route_info.query opts[:query]

puts "ASN      : #{route_info.asn}"
puts "Org      : #{route_info.as_name}"
puts "Country  : #{route_info.country}"
puts "Registry : #{route_info.registry}"
puts "CIDR     : #{route_info.cidr}" if opts[:type] == :ip
