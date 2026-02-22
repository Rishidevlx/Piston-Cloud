FROM ghcr.io/engineer-man/piston:latest
USER root

RUN echo '#!/bin/bash' > /runner.sh && \
    echo '/usr/local/bin/docker-entrypoint.sh & ' >> /runner.sh && \
    echo 'sleep 10' >> /runner.sh && \
    echo '/piston/packages/cli pkg install c java' >> /runner.sh && \
    echo 'wait' >> /runner.sh && \
    chmod +x /runner.sh

ENTRYPOINT ["/runner.sh"]
