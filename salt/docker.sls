docker_script:
  file.managed:
    - name: /srv/install-docker.sh
    - source: salt://scripts/install-docker.sh
    - mode: 755

/srv/install-docker.sh:
  cmd.run
