FROM clickhouse/clickhouse-server:25.3.6.56

COPY ./posthog/posthog/idl /idl
COPY ./posthog/docker/clickhouse/docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
COPY ./posthog/docker/clickhouse/config.xml /etc/clickhouse-server/config.xml
COPY ./posthog/docker/clickhouse/config.d/default.xml /etc/clickhouse-server/config.d/default.xml
COPY ./posthog/docker/clickhouse/users.xml /etc/clickhouse-server/users.xml
COPY ./posthog/docker/clickhouse/user_defined_function.xml /etc/clickhouse-server/user_defined_function.xml
COPY ./posthog/posthog/user_scripts /var/lib/clickhouse/user_scripts
