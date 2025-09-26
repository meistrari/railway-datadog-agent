FROM datadog/agent:7-full

COPY ./datadog.yaml /etc/datadog-agent/datadog.yaml
COPY ./otel-config/otel-config-private.yaml /etc/datadog-agent/otel-config.yaml
COPY ./flare.sh /flare.sh

EXPOSE 4317 4318

CMD ["bash", "/flare.sh"]
