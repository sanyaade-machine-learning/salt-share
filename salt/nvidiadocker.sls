nvidia_docker_script:
  file.managed:
    - name: /srv/install-nvidia-docker.sh
    - source: salt://scripts/install-nvidia-docker.sh
    - mode: 755

/srv/install-nvidia-docker.sh:
  cmd.run

copy_dockerjson:
  file.managed:
    - name: /etc/docker/daemon.json
    - source: salt://config/daemon.json
    - mode: 644
