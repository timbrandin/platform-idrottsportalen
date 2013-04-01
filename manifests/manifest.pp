class { 'systools': }
class { 'apache': }
class { 'php':
  development => true
}
class { 'drush': }
class { 'postfix': }
class { 'mongodb': }


class { 'mysql':
  local_only     => true,
  hostname => "devbox.dev"
}

apache::vhost { "drupal": }
