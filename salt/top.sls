base:
  'saltdrive':
     - common
     - hosts
     - firewall 
  'proteus':
     - common
     - nfs
     - groups
     - users
     - hosts
  'titan':
     - common
  'atlas':
     - common
  'ocean':
     - common
  'd3':
     - common
     - groups
     - users
     - sudo
  'd4.maas.garaza.io':
     - common
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
     - docker
  'd5.maas.garaza.io':
     - common
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
     - fstab
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
     - docker
  'd12.maas.garaza.io':
     - common
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
     - firewall
  'mac2':
     - firewall
  'mac3':
     - firewall
  'mac4':
     - firewall
  'mac5':
     - firewall
  'mac6':
     - firewall
