{% set users = pillar.get('server_users') %}
{% set admins = pillar.get('sudo_users') %}
{% set tags = pillar.get('node_tags') %}
{% for name, user in pillar['users'].iteritems() %}
{% if name in users %}
{{ name }}:
  group.present:
  {% set gid = user['gid'] | default(user['uid']) %}
    - gid: {{ gid }}
  {% set shell = user['shell'] | default('/bin/bash') %}
  {% set groups = user['groups'] | default([]) %}
  user.present:
    - fullname: {{ user['fullname'] }}
    - home: /home/{{ name }}
    - shell: {{ shell }}
    - uid: {{ user['uid'] }}
    - gid: {{ gid }}
    - gid_from_name: True
    - groups:
    {% if admins and name in admins %}
      - sudo
    {% endif %}
    {% for group in groups %}
      - {{ group }}
    {% endfor %}
    - require:
      - group: {{ name }}
/home/{{ name }}:
  file.directory:
    - user: {{ name }}
    - group: {{ name }}
    - mode: 700
    - recurse:
      - user
      - group
{% if 'nfs' in tags %}
/nfs/home/{{ name }}:
  file.directory:
    - user: {{ name }}
    - group: {{ name }}
    - mode: 700
/nfs/scratch/{{ name }}:
  file.directory:
    - user: {{ name }}
    - group: {{ name }}
    - mode: 700
/home/{{ name }}/nfs:
  file.symlink:
    - target: /nfs/home/{{ name }}
    - user: {{ name }}
    - group: {{ name }}
/home/{{ name }}/scratch:
  file.symlink:
    - target: /nfs/scratch/{{ name }}
    - user: {{ name }}
    - group: {{ name }}
{% endif %}
{% if 'key.pub' not in user or user['key.pub'] == True %}
{{ name }}_key.pub:
  ssh_auth:
    - present
    - user: {{ name }}
    - source: salt://users/{{ name }}/keys/key.pub
    - require:
      - {{ name }}
{% endif %}
{% else %}
{{ name }}:
  user.absent
{% endif %}
{% endfor %}
