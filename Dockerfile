FROM datadog/agent:7-full

COPY ./datadog.yaml /etc/datadog-agent/datadog.yaml
COPY ./otel-config/otel-config-private.yaml /etc/datadog-agent/otel-config.yaml

COPY ./syslog.yaml /etc/datadog-agent/conf.d/syslog.d/conf.yaml

EXPOSE 4317 4318 514/udp

CMD ["otel-agent", "--config=/etc/datadog-agent/otel-config.yaml", "--core-config=/etc/datadog-agent/datadog.yaml", "--sync-delay=30s"]
