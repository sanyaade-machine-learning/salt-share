/nfs/home:
  file.directory:
    - user: root
    - group: root
    - mode: 777
    - makedirs: True

nfs_client:
  pkg.installed:
    - names: [ nfs-common ]

copy_rclocal_srv:
  file.managed:
    - name: /etc/systemd/system/rc-local.service
    - source: salt://scripts/rc-local.service
    - mode: 644
    - makedirs: True

copy_rclocal:
  file.managed:
    - name: /etc/rc.local
    - source: salt://scripts/rc.local
    - mode: 755

copy_nfstunnel:
  file.managed:
    - name: /usr/local/bin/nfstunnel
    - source: salt://scripts/nfstunnel
    - mode: 755
    - makedirs: True

rpcbind:
  service.dead:
    - enable: False

rc-local:
  service.enabled:
    - enable: True
