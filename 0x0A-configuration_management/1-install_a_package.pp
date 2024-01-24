# Install python3-pip package

package { 'python3-pip':
  ensure => 'installed',
}

# Install flask using pip3

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}