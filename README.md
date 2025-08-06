Railway Datadog Agent
---

This image is a custom Docker container for running the Datadog Agent with OpenTelemetry support. It is designed to collect and forward traces, metrics, and logs to Datadog.

## How to Use

Add this github repo to your Railway project and set the following environment variables:
```bash
DD_HOSTNAME="${{RAILWAY_PRIVATE_DOMAIN}}"
DD_SITE="YOUR_DATADOG_SITE" # e.g., us5.datadoghq.com
DD_API_KEY="YOUR_DATADOG_API_KEY"
```

Now, in your application, the first steps is to instrument your application with OpenTelemetry.

The only thing to change is to set the datadog-agent otel-collector as the export endpoint by setting the `OTEL_EXPORTER_OTLP_ENDPOINT` environment variable with the value: `http://otel-agent:4318`, where `otel-agent` is the name of the service defined in your railway project.

# Useful tips
- Ensure the connection with this Github repository on the `main` branch is set up in your Railway project, so the datadog-agent always run the latest version
