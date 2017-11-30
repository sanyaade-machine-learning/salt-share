copy_journald:
  file.managed:
    - name: /etc/systemd/journald.conf
    - source: salt://config/journald.conf
    - mode: 644
