class rhel::rhn::params {
  case $lsbmajdistrelease {
    6, default: {
      $rhn_package_name = ['rhnsd', 'subscription-manager', 'yum-rhn-plugin', 'rhn-check', 'rhn-custom-info', 'rhn-setup', 'rhnlib', 'rhn-client-tools', 'rhnpush']
      $rhn_service_name = ['rhnsd','rhsmcertd']
    }
  }
}
