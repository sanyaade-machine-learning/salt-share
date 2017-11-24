base:
  'saltdrive':
     - common
     - hosts
     - firewall 
  'proteus':
     - common
     - groups
     - users
     - hosts
     - python
     - docker
     - sudo
  'titan':
     - common
     - devel
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
     - docker
     - cuda
  'atlas':
     - common
     - devel
  'ocean':
     - common
     - devel
  'd3':
     - common
     - groups
     - users
     - sudo
     - firewall
  'd4.maas.garaza.io':
     - common
     - devel
     - fstab
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
     - docker
  'd5.maas.garaza.io':
     - common
     - devel
     - fstab
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
     - docker
  'd9.maas.garaza.io':
     - common
     - users
     - hosts
     - sudo
     - firewall
  'd12.maas.garaza.io':
     - common
     - devel
     - fstab
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
     - docker
  'ialog':
     - groups
     - users
     - sudo
  'mac1':
     - groups
     - users
     - firewall
  'mac2':
     - groups
     - users
     - firewall
  'mac3':
     - groups
     - users
     - firewall
  'mac4':
     - groups
     - users
     - firewall
  'mac5':
     - groups
     - users
     - firewall
  'mac6':
     - groups
     - users
     - firewall
