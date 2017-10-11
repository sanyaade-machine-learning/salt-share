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
     - hosts
     - sudo
  'd4.maas.garaza.io':
     - common
     - fstab
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
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
  'd12.maas.garaza.io':
     - common
     - fstab
     - groups
     - users
     - hosts
     - sudo
     - python
     - firewall
