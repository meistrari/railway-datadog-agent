FROM datadog/agent:7-full

COPY ./start.sh ./start.sh

COPY ./datadog.yaml /etc/datadog-agent/datadog.yaml
COPY ./otel-config/*.yaml /otel-config/

EXPOSE 4317 4318

CMD ["./start.sh"]
