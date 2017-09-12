sudo_config:
  file.managed:
    - name: /etc/sudoers
    - source: salt://config/sudoers
    - mode: 440
