{% set rules = pillar.get('default_iptables') %}
{% if rules %}
copy_iptables:
  file.managed:
    - name: /etc/iptables/rules.v4
    - source: salt://config/{{ rules }}
    - mode: 644
    - makedirs: True
{% endif %}

iptables-persistent:
  pkg.installed
