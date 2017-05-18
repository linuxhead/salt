mysql-user-group:
  group.present:
    - name: mysql
    - gid: 1001

  user.present:
    - name: mysql
    - fullname: mysql
    - shell: /sbin/nologin
    - uid: 1001
    - gid: 1001
