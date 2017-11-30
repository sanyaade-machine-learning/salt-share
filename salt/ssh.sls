copy_ssh:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://config/sshd_config
    - mode: 644
