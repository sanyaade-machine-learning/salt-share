#install-cudnn6:
#  cmd.run:
#    - names:
#      - echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list
#      - apt-get update && apt-get install -y --no-install-recommends --allow-unauthenticated libcudnn6 libcudnn6-dev

install-cudnn7:
  cmd.run:
    - names:
      - echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list
      - apt-get update && apt-get install -y --no-install-recommends --allow-unauthenticated libcudnn7=7.0.4.31-1+cuda8.0 libcudnn7-dev=7.0.4.31-1+cuda8.0

