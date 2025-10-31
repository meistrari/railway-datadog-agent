FROM otel/opentelemetry-collector-contrib:0.138.0

COPY ./otel-config.yaml /otel-config.yaml

EXPOSE 4317 4318 4319 4320 54526 54527

CMD ["--config=/otel-config.yaml", "--feature-gates=datadog.EnableOperationAndResourceNameV2"]
