FROM ghcr.io/engineer-man/piston:latest
USER root
RUN nohup /bin/sh -c 'npm start' > /dev/null 2>&1 & \
    echo "Waiting for Piston CLI to initialize..." && \
    sleep 10 && \
    /piston/packages/cli pkg install c java && \
    pkill -f node
EXPOSE 2000
