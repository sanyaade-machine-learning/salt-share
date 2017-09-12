# salt-share: Automated administration for biolab cloud network


### Master / Salt server ###

Note that install script reboots the server. Edit the script to change this behaviour.

```sh
    ./scripts/saltinstall.sh
```

After reboot, register salt server key:

```sh
    ./ADD.sh saltdrive
    cd generate && python salt.py
    ./scripts/enable-fw.sh
```
### Minions ###

When a new server is added to the cloud (run this once):

```sh
    ./DEPLOY.sh hostname
    sudo ./KEYS.sh hostname
    ./ADD.sh hostname
```
Apply the salt rules on minion:

```sh
    ./APPLY.sh hostname
```

You need to run these two commands after each configuration change.

```sh
    ./UPDATE.sh
    ./APPLY.sh hostname
```

To delete keys before existing machine can be re-deployed.

```sh
    ./REMOVE.sh hostname
```

### Troubleshooting ###

Check the keys. Salt will not apply the rules if the keys have not been accepted.

```sh
    sudo salt-key
```

You may need to check minions if there is a problem with connection. It may also inicate a problem with minion keys. 

```sh
    sudo salt-run manage.status 
```
