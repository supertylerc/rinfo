# rinfo [![Build Status](https://travis-ci.org/supertylerc/rinfo.svg?branch=master)](https://travis-ci.org/supertylerc/rinfo) [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/supertylerc/rinfo/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/supertylerc/rinfo/?branch=master)

## About ##

rinfo is a Ruby script that allows you to look up IP information for a specified
IP or prefix.  I wrote it because I'm lazy and can never remember the full whois
command or server.

> The instructions below assume you have symlinked `rinfo.rb` to `rinfo`
> somewhere in your path.

## Usage ##

    rinfo -t <type> -q <query object>

    Options:
      -t  Type of query.  Either 'ip' (IP Address) or 'asn' (AS Number).
      -q  Query object.  An IP address if your query type is 'ip' or an
          ASN if your query type is 'asn'.


## Installation ##

Clone it, copy and paste it, download the raw, whatever.  I recommend
that you symlink `rinfo.rb` to `rinfo`.


### Example - IP Query ###

```bash
╭─tyler at deathstar in ~/bin on master✘✘✘ using ‹ruby-2.1.1› 14-06-26 - 11:24:21
╰─○ ./rinfo -t ip -q 8.8.8.8
ASN      : 15169
Org      : GOOGLE - GOOGLE INC.,US
Country  : US
Registry : ARIN
CIDR     : 8.8.8.0/24
```


### Example - Origin Query ###

```bash
╭─tyler at deathstar in ~/bin on master✘✘✘ using ‹ruby-2.1.1› 14-06-26 - 11:24:25
╰─○ ./rinfo -t asn -q 15169
ASN      : 15169
Org      : GOOGLE - GOOGLE INC.,US
Country  : US
Registry : ARIN
```


# Author #
Tyler Christiansen
tyler@oss-stack.io

# License #
BSD 2-Clause License
