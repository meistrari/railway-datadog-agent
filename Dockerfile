FROM datadog/agent:7-full

COPY datadog.yaml /etc/datadog-agent/datadog.yaml
COPY otel-config.yaml /etc/datadog-agent/otel-config.yaml

EXPOSE 4318

CMD ["otel-agent", "--config=/etc/datadog-agent/otel-config.yaml", "--core-config=/etc/datadog-agent/datadog.yaml", "--sync-delay=30s"]
