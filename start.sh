#!/bin/bash

set -euo pipefail

CONFIG_FILE="/etc/datadog-agent/otel-config.yaml"

IS_PUBLIC_COLLECTOR=${IS_PUBLIC_COLLECTOR:-"false"}

if [ "$IS_PUBLIC_COLLECTOR" = "true" ]; then
  CONFIG_FILE="/etc/datadog-agent/otel-config-public.yaml"
fi

echo "Using config file: $CONFIG_FILE"

otel-agent --config=$CONFIG_FILE --core-config=/etc/datadog-agent/datadog.yaml
