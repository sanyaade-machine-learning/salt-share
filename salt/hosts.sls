saltdrive in hosts:
  host.present:
    - name: saltdrive
    - ip: 192.168.27.74

atlas in hosts:
  host.present:
    - name: atlas
    - ip: 192.168.27.61

ocean in hosts:
  host.present:
    - name: ocean
    - ip: 192.168.27.62

titan in hosts:
  host.present:
    - name: titan
    - ip: 192.168.27.63

proteus in hosts:
  host.present:
    - name: proteus
    - ip: 192.168.27.60

iasalt in hosts:
  host.present:
    - name: iasalt
    - ip: 192.168.245.34

d3 in hosts:
  host.present:
    - name: d3
    - ip: 192.168.245.10

