FROM ghcr.io/engineer-man/piston:latest
USER root
RUN echo '#!/bin/sh' > /runner.sh && \
    echo 'docker-entrypoint.sh &' >> /runner.sh && \
    echo 'sleep 5' >> /runner.sh && \
    echo 'cli pkg install c java' >> /runner.sh && \
    echo 'wait' >> /runner.sh && \
    chmod +x /runner.sh

ENTRYPOINT ["/runner.sh"]
