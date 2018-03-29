base:
  'saltdrive':
     - common
     - hosts
     - firewall 
     - groups
     - users
  'proteus':
     - common
     - devel
     - fstab
     - groups
     - users
     - hosts
     - python
     - firewall
     - docker
     - sudo
  'titan':
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
     - cuda
#     - cudnn
  'atlas':
     - common
     - devel
     - fstab
     - groups
     - users
     - python
     - sudo
  'o1.maas.garaza.io':
     - gpu
  'o2.maas.garaza.io':
     - gpu
  'o3.maas.garaza.io':
     - gpu
  'o4.maas.garaza.io':
     - gpu
  'd4.maas.garaza.io':
     - cpu
  'd5.maas.garaza.io':
     - cpu
  'd12.maas.garaza.io':
     - cpu
  'ialog':
     - groups
     - users
     - sudo
  'iajump':
     - common
     - groups
     - users
     - sudo
     - hosts
  'mac1':
    - groups
    - users
    - firewall
    - iacluster
  'mac2':
    - groups
    - users
    - firewall
    - iacluster
  'mac3':
    - groups
    - users
    - firewall
    - iacluster
  'mac4':
    - groups
    - users
    - firewall
    - iacluster
  'mac5':
    - groups
    - users
    - firewall
    - iacluster
  'mac6':
    - groups
    - users
    - firewall
    - iacluster 
  'd3':
    - groups
    - users
    - sudo
    - firewall
    - iacluster
  'd9.maas.garaza.io':
    - groups
    - users
    - sudo
    - firewall
    - iacluster
  'hyperion':
    - groups
    - users
    - sudo 
    - firewall
    - iacluster
    - cuda
    - docker
    - nvidiadocker
    - kubernetes
  'titan.maas':
    - groups
    - users
    - sudo
    - firewall
    - iacluster
    - cuda
    - docker
    - nvidiadocker
    - kubernetes
  'o5.maas.garaza.io':
     - gpu
  'o6.maas.garaza.io':
     - gpu
  'o7.maas.garaza.io':
     - gpu
  'o8.maas.garaza.io':
     - gpu
