echo "kernel.printk = 3 4 1 3" >> /etc/sysctl.conf:
  cmd.run

echo "ForwardtoConsole=no" >> /etc/systemd/journald.conf:
  cmd.run

echo "TTYPath=/dev/null" >> /etc/systemd/journald.conf:
  cmd.run
