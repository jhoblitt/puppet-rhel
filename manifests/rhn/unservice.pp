class rhel::rhn::unservice {
  include rhel::rhn::params

  service{ $rhel::rhn::params::rhn_service_name:
    ensure      => stopped,
    hasstatus   => true,
    hasrestart  => true,
    enable      => false,
  }
}
