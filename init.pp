node default {
  package {"nginx":
    ensure => latest,
  }
  service {"nginx":
    ensure => running,
    enable => true,
  }
  file {"/etc/nginx/nginx.conf":
    ensure => present,
    source => "/devops_puppet_config/nginx.conf",
    notify => Service["nginx"],
  }
}

