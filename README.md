nodejs-nodenv-role
==================


Requirements
------------

- Ubuntu Server 14.04 LTS
- Ansible 1.5+


Role Variables
--------------

- nodenv_repo
- nodenv_build_repo
- nodenv_update
- node_version
- node_source_path  
  `/opt/source`
- node_source_url
- node_source_file
- node_source_checksum  
  _sha256 of python source file_


Dependencies
------------

- qianka.ubuntu-common


Example Playbook
----------------

```yml
- hosts: all
  user: root
  vars:
    ubuntu_apt_mirror: http://mirrors.aliyun.com/ubuntu

    - { role: qianka.nodejs-nodenv,
        node_version: 0.10.32,
        node_source_url: 'https://npm.taobao.org/dist/v0.10.32/node-v0.10.32.tar.gz',
        node_source_file: node-v0.10.32.tar.gz,
        node_source_checksum: c2120d0e3d2d191654cb11dbc0a33a7216d53732173317681da9502be0030f10
      }
```


License
-------


Author Information
------------------
