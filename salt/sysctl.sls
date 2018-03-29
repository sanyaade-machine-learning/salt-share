copy_sysctl:
  file.managed:
    - name: /etc/sysctl.conf
    - source: salt://config/sysctl.conf
    - mode: 644
