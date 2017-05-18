tomcat-install:
  file.managed:
    - name: /usr/local/src/apache-tomcat-7.0.55.tar.gz
    - source: salt://tomcat/files/apache-tomcat-7.0.55.tar.gz
    - user: root
    - group: root
    - mode: 755
  cmd.run:
    - name:  cd /usr/local/src && tar zxf apache-tomcat-7.0.55.tar.gz && mv apache-tomcat-7.0.55 /usr/local/tomcat && cd /usr/local/tomcat/webapps && rm -rf docs examples host-manager manager
    - unless: test -d /usr/local/tomcat
/etc/rc.local:
  file.append:
    - text:
      - "/usr/local/tomcat/startup.sh"
