FROM temporalio/auto-setup:1.20.0

LABEL kompose.volume.type="configMap"
COPY ./docker/temporal/dynamicconfig /etc/temporal/config/dynamicconfig
