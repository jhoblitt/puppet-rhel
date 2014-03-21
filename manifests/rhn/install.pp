class rhel::rhn::install {
  include rhel::rhn::params

  package{ $rhel::rhn::params::rhn_package_name:
    ensure => present,
  }
}
