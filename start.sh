#!/bin/sh

set -eu

CONFIG_FILE="/otel-config/otel-config-private.yaml"

IS_PUBLIC_COLLECTOR=${IS_PUBLIC_COLLECTOR:-"false"}

if [ "$IS_PUBLIC_COLLECTOR" = "true" ]; then
  CONFIG_FILE="/otel-config/otel-config-public.yaml"
fi

echo "Using config file: $CONFIG_FILE"

/otelcol-contrib --config=$CONFIG_FILE
