#
# rubygems module
# original by luke kanies
# http://github.com/lak
#
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

class rubygems {
  # from debian 8 on this is not anymore needed
  if ($::operatingsystem != 'Debian') or (versioncmp($::operatingsystemmajrelease,'8') < 0) {
    package{'rubygems':
      ensure => installed,
    }
  }
}
