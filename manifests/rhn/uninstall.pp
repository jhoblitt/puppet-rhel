class rhel::rhn::uninstall {
  include rhel::rhn::unservice, rhel::rhn::params

# as of puppet 2.7, the yum provider can't handle circular package dependancies
# so we have to get heavy handed and remove the rhn packages with exec

#  package{ $rhel::rhn::params::rhn_package_name:
#    ensure  => absent,
#    require => Class['rhel::rhn::unservice'],
#  }

  $package_list = join($rhel::rhn::params::rhn_package_name, " ")
  $n_package    = size($rhel::rhn::params::rhn_package_name)

  exec { "yum remove -y -e0 $package_list":
    path    => '/usr/bin',
    unless  => "/bin/rpm -q $package_list; [ $? == $n_package ]",
    require => Class['rhel::rhn::unservice'],
  }
}
