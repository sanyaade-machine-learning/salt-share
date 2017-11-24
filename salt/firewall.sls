{% set rules = pillar.get('iptables_rules') %}
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
