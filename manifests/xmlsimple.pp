# xml simple lib
class rubygems::xmlsimple {
  package{'rubygem-xml-simple':
    ensure => present,
  }
  if $::osfamily == 'Debian' {
    Package['rubygem-xml-simple']{
      name => 'libxml-simple-ruby'
    }
  }
}
