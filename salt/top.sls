base:
  '*':
    - common
  'saltdrive':
    - hosts
    - firewall 
    - groups
    - users
  'proteus':
    - cpu
  'o1.maas.garaza.io':
    - gpu
  'o2.maas.garaza.io':
    - gpu
  'o3.maas.garaza.io':
    - gpu
  'o4.maas.garaza.io':
    - gpu
  'o5.maas.garaza.io':
    - gpu
  'o6.maas.garaza.io':
    - gpu
  'o7.maas.garaza.io':
    - gpu
  'o8.maas.garaza.io':
    - gpu
  'd4.maas.garaza.io':
    - cpu
  'd5.maas.garaza.io':
    - cpu
  'd12.maas.garaza.io':
    - cpu
  'atlas':
    - devel
    - fstab
    - groups
    - users
    - python
    - sudo
  'cloudIDE':
    - common
    - devel
    - fstab
    - groups
    - users
    - hosts
    - sudo
    - python
    - firewall
  'ialog':
    - groups
    - users
    - sudo
    - python
  'iajump':
    - groups
    - users
    - sudo
    - hosts
  'mac1':
    - iacpu
  'mac2':
    - iacpu
  'mac3':
    - iacpu
  'mac4':
    - iacpu
  'mac5':
    - iacpu
  'mac6':
    - iacpu
  'd3':
    - iacpu
  'd9.maas.garaza.io':
    - iacpu
  'hyperion':
    - iagpu
  'titan.maas':
    - iagpu
