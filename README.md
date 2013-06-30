## About ##

rinfo is a Ruby script that allows you to look up IP information for a specified IP or prefix.  I wrote it because I'm lazy and can never remember the full whois command or server.

## Usage ##

    rinfo <option> [route]
    
    Options:
      -o  Originating ASN of [route]
      -q  Query route registries for basic information on [route] 
      

## Installation ##

Clone it, copy and paste it, download the raw, whatever.


### Example - Registry Query ###

    ./rinfo -q 8.8.8.8
    AS         : 15169
    IP         : 8.8.8.8
    BGPPrefix  : 8.8.8.0/24
    CC         : US
    Registry   : arin
    Allocated  : 1992-12-01
    ASName     : GOOGLE-GoogleInc.


### Example - Origin Query ###

    ./rinfo -o 8.8.8.8
    route:         0.0.0.0/1
    origin:        AS3303
    descr:         SWISSCOM Swisscom (Switzerland) Ltd
    lastupd-frst:  2013-06-20 09
    lastupd-last:  2013-06-25 10
    seen-at:       rrc04
    num-rispeers:  2
    source:        RISWHOIS
    
    
    route:         8.0.0.0/8
    origin:        AS3356
    descr:         LEVEL3 Level 3 Communications
    lastupd-frst:  2013-06-14 15
    lastupd-last:  2013-06-29 23
    seen-at:       rrc00,rrc01,rrc03,rrc04,rrc05,rrc06,rrc07,rrc10,rrc11,rrc12,rrc13,rrc14,rrc15
    num-rispeers:  107
    source:        RISWHOIS
    
    
    route:         8.0.0.0/9
    origin:        AS3356
    descr:         LEVEL3 Level 3 Communications
    lastupd-frst:  2013-06-14 15
    lastupd-last:  2013-06-29 23
    seen-at:       rrc00,rrc01,rrc03,rrc04,rrc05,rrc06,rrc07,rrc10,rrc11,rrc12,rrc13,rrc14,rrc15
    num-rispeers:  105
    source:        RISWHOIS
    
    
    route:         8.8.8.0/24
    origin:        AS15169
    descr:         GOOGLE - Google Inc.
    lastupd-frst:  2013-06-19 02
    lastupd-last:  2013-06-29 23
    seen-at:       rrc00,rrc01,rrc03,rrc04,rrc05,rrc06,rrc07,rrc10,rrc11,rrc12,rrc13,rrc14,rrc15
    num-rispeers:  114
    source:        RISWHOIS


# Author #
Tyler Christiansen
tylerc@label-switched.net

# License #
BSD 2-Clause License