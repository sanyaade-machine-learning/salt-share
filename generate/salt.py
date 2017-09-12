#!/usr/bin/env python

import yaml
import csv
import os
from datetime import datetime

def ensure_dir(f):
    d = os.path.dirname(f)
    if d:
        if not os.path.exists(d):
            try:
                os.makedirs(d)
            except OSError, e:
                print f
                raise e

def read_config(filename):
    fp = open(filename)
    reader = csv.reader(fp, delimiter=",")
    header = reader.next()
    
    all_data = []
    for line in reader:
        data = {}
        for i, key in enumerate(header):
            data[key] = line[i]
        all_data.append(data)
    
    return all_data
    
def read_config(filename):
    fp = open(filename)
    reader = csv.reader(fp, delimiter=",")
    header = reader.next()
    
    all_data = []
    for line in reader:
        data = {}
        for i, key in enumerate(header):
            data[key] = line[i]
        all_data.append(data)
    
    return all_data

def read_access(filename):
    fp = open(filename)
    reader = csv.reader(fp, delimiter=",")
    
    all_data = []
    for line in reader:
        data = {'uname': line[0]}
        data['servers'] = line[1:]
        all_data.append(data)
    
    return all_data

def parse_user(user):
    dct = {}
    dct['uid'] = int(user['uid'])
    dct['fullname'] = user['fullname']
    if user['groups']:
        dct['groups'] = user['groups'].split(",")
    return dct

def parse_data(data):
    users = data
    dct = {'users': {}}
    for user in users:
        uname = user['uname']
        if 'valid' in user and user['valid']:
            try:
                x = datetime.strptime(user['valid'], '%Y-%m-%d')
                if x < datetime.now():
                    # skip expired users
                    continue
            except Exception:
                continue
        dct['users'][uname] = parse_user(user)
    
    return dct

def parse_access(access):
    all_servers = {}
    for a in access:
        uname = a['uname']
        servers = a['servers']
        
        print uname, servers
        for s in servers:
            if s not in all_servers:
                all_servers[s] = []
            all_servers[s].append(uname)
    return all_servers

def store_yaml(filename, data):
    ensure_dir(filename)
    with open(filename, 'w') as outfile:
        yaml.dump(data, outfile, default_flow_style=False)

if __name__ == "__main__":
    data = read_config("users.csv")
    users = parse_data(data)
    store_yaml("../pillar/users/init.sls", users)
    
    print "Access:"
    access = read_access("access.csv")
    server_access = parse_access(access)
    print "Sudo:" 
    sudo = read_access("sudo.csv")
    sudo_access = parse_access(sudo)
    for server in server_access:
        if server in sudo_access:
            store_yaml('../pillar/users/%s.sls' % server, {'server_users': server_access[server], 'sudo_users': sudo_access[server]})
        else:
            store_yaml('../pillar/users/%s.sls' % server, {'server_users': server_access[server]})
    
