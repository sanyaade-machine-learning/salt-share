base:
  '*':
    - groups
    - users
  'd3':
    - users.d3
    - firewall.d3
  'd4.maas.garaza.io':
    - users.d4
    - firewall.default
  'd5.maas.garaza.io':
    - users.d5
    - firewall.default
  'd9.maas.garaza.io':
    - users.d9
    - firewall.default
  'd12.maas.garaza.io':
    - users.d12
    - firewall.default
  'proteus':
    - users.proteus
  'titan':
    - users.titan
    - firewall.default
  'atlas':
    - users.atlas
    - firewall.default
  'ocean':
    - users.ocean
    - firewall.default
  'saltdrive':
    - users.saltdrive
  'ialog':
    - users.ialog
    - users.mac
  'mac1':
    - firewall.mac1
    - users.mac
  'mac2':
    - firewall.mac
    - users.mac
  'mac3':
    - firewall.mac
    - users.mac
  'mac4':
    - firewall.mac
    - users.mac
  'mac5':
    - firewall.mac
    - users.mac
  'mac6':
    - firewall.mac
    - users.mac
