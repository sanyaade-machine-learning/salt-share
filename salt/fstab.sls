/nfs/home:
    mount.mounted:
      - device: 192.168.27.50:/NFS_home
      - fstype: nfs
      - mount: True
      - mkmnt: True
      - persist: True

/nfs/scratch:
    mount.mounted:
      - device: 192.168.27.50:/NFS_scratch
      - fstype: nfs
      - mount: True
      - mkmnt: True
      - persist: True
