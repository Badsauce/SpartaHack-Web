class { 'nodejs':
  version => 'stable',
  make_install => false,
}

package { 'ruby-dev':
        ensure => installed,
}

package { 'compass':
  ensure => 'installed',
  provider => 'gem',
  require => Package['ruby-dev'],
}

package { 'autoprefixer-rails':
  ensure => 'installed',
  provider => 'gem',
  require => Package['ruby-dev'],
}
