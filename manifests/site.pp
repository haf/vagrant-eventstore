class baseline {
  include ::epel
  include ::packagecloud

  packagecloud::repo { 'haf/oss':
    type => 'rpm',
  }
}

node default {
  include ::baseline

  class { 'mono':
    require => [
      Class['epel'],
      Packagecloud::Repo['haf/oss']
    ],
  }

  class { 'supervisor':
    require => [
      Class['epel'],
      Packagecloud::Repo['haf/oss']
    ],
  }

  include ::eventstore
}
