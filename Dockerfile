FROM quay.io/keycloak/keycloak:latest

# Build first
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

# Use start command from Render instead of ENTRYPOINT
CMD ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]