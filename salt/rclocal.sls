lightdm:
  service.dead:
    - enable: False

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
