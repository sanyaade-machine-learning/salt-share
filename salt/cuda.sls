nvidia-cuda-toolkit:
   pkg.installed

nvidia-cuda-dev:
   pkg.installed

lightdm:
  service.dead:
    - enable: False

include:
  - rclocal
