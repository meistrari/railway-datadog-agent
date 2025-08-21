Railway Datadog Agent
---

This image is a custom Docker container for running the Datadog Agent with OpenTelemetry support. It is designed to collect and forward traces, metrics, and logs to Datadog.

## How to Use

Add this github repo to your Railway project and set the following environment variables:
```bash
DD_HOSTNAME="${{RAILWAY_PROJECT_NAME}}-${{RAILWAY_ENVIRONMENT_NAME}}"
DD_SITE="YOUR_DATADOG_SITE" # e.g., us5.datadoghq.com
DD_API_KEY="YOUR_DATADOG_API_KEY"
```

Now, in your application, the first steps is to instrument your application with OpenTelemetry.

The only thing to change is to set the `OTEL_EXPORTER_OTLP_ENDPOINT` and `OTEL_EXPORTER_OTLP_PROTOCOL` environment variables in your app.
```
OTEL_EXPORTER_OTLP_ENDPOINT=http://${{railway-datadog-agent.RAILWAY_PRIVATE_DOMAIN}}:4318
OTEL_EXPORTER_OTLP_PROTOCOL=http/protobuf
```

You should see a arrow from your service pointing to the `railway-datadog-agent` service in the Railway dashboard.

# Useful tips
- Ensure the connection with this Github repository on the `main` branch is set up in your Railway project, so the datadog-agent always run the latest version
