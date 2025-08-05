FROM datadog/agent:7

# Copy datadog.yaml into the container
COPY datadog.yaml /etc/datadog-agent/datadog.yaml

# Copy syslog configuration file
COPY syslog.yaml /etc/datadog-agent/conf.d/syslog.d/

# DogStatsD port, APM port, and the syslog port
EXPOSE 8125/udp
EXPOSE 8126
EXPOSE 514/udp
