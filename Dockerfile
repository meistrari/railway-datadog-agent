FROM datadog/agent:7-full

COPY ./start.sh ./start.sh

COPY datadog.yaml /etc/datadog-agent/datadog.yaml
COPY otel-config*.yaml /etc/datadog-agent/

EXPOSE 4318

CMD ["./start.sh"]
