#!/bin/bash

set -euo pipefail

CONFIG_FILE="/etc/datadog-agent/otel-config.yaml"

echo "Using config file: $CONFIG_FILE"

otel-agent --config=$CONFIG_FILE --core-config=/etc/datadog-agent/datadog.yaml
