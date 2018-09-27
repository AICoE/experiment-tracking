
FROM docker.io/centos/python-36-centos7

USER root

LABEL architecture="x86_64"  \
      com.redhat.component="openshift-mlflow-tracking-server-docker"  \
      maintainer="Zak Hassan <zak.hassan@redhat.com>" \
      mlflow="0.5.0"

RUN  pip install 'mlflow==0.5.0' && pip install awscli
# curl https://bootstrap.pypa.io/get-pip.py | python - \
# && pip install 'mlflow==0.5.0' && pip install awscli
# && chmod a+rwx  /opt/app-root/src \
# &&  chown -Rv 1001:0  /opt/app-root/src


COPY entrypoint.sh /etc/entrypoint.sh
EXPOSE 5000

USER 185

ENTRYPOINT ["/etc/entrypoint.sh"]
