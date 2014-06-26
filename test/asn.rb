# encoding: UTF-8
require_relative '../lib/rinfo'
require 'minitest/autorun'

class TestASN < Minitest::Test
  def setup
    @asn_info = RouteInfo.new :asn
  end

  def test_asn
    @asn_info.query '7029'
    assert_equal '7029', @asn_info.asn
    assert_equal 'WINDSTREAM - WINDSTREAM COMMUNICATIONS INC,US',
      @asn_info.as_name
    assert_equal 'US', @asn_info.country
    assert_equal 'ARIN', @asn_info.registry
  end
end
