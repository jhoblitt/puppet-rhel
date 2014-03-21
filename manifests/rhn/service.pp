class rhel::rhn::service {
  include rhel::rhn::install, rhel::rhn::params

  service{ $rhel::rhn::params::rhn_service_name:
    ensure      => running,
    hasstatus   => true,
    hasrestart  => true,
    enable      => true,
    require     => Class['rhel::rhn::install'],
  }
}
