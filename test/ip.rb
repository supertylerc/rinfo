# encoding: UTF-8
require_relative '../lib/rinfo'
require 'minitest/autorun'

class TestASN < Minitest::Test
  def setup
    @asn_info = RouteInfo.new :ip
  end

  def test_ip
    @asn_info.query '173.221.0.1'
    assert_equal '7029', @asn_info.asn
    assert_equal 'WINDSTREAM - WINDSTREAM COMMUNICATIONS INC,US',
                 @asn_info.as_name
    assert_equal 'US', @asn_info.country
    assert_equal 'ARIN', @asn_info.registry
    assert_equal '173.221.0.0/17', @asn_info.cidr
  end
end
