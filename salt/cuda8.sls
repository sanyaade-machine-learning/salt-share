install_cuda8:
  cmd.run:
    - names:
      - curl https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
      - dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
      - apt-get update
      - apt-get install -y cuda-8-0

# set path for /usr/local/cuda/bin in /etc/environments
