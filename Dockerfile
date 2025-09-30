FROM otel/opentelemetry-collector-contrib:0.135.0 AS collector

FROM alpine:3.19

RUN apk add --no-cache ca-certificates

# Copy the collector binary
COPY --from=collector /otelcol-contrib /otelcol-contrib

# Copy configuration files
COPY ./otel-config/*.yaml /otel-config/
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 4317 4318

# Use the start script to dynamically select config
CMD ["/start.sh"]
