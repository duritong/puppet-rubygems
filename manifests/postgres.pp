class rubygems::postgres {
  if $::osfamily == 'RedHat' and
    versioncmp($::operatingsystemmajrelease,'5') > 0 {
    package{'rubygem-pg':
      ensure => installed,
    }
  } else {
    ensure_packages(['postgresql-devel'])
    rubygems::gem{'ruby-pg':}
  }
}
