andrewrothstein.kibana
=============================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-kibana.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-kibana)

Installs [Kibana](https://www.elastic.co/products/kibana)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kibana
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
