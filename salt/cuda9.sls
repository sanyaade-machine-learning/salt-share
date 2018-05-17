install_cuda9:
  cmd.run:
    - names:
      - wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
      - dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
      - apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
      - apt-get update
      - apt-get install -y cuda-9-0

# set path for /usr/local/cuda/bin in /etc/environments
