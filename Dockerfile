FROM ghcr.io/engineer-man/piston:latest
RUN /piston/packages/cli pkg install c java
EXPOSE 2000
