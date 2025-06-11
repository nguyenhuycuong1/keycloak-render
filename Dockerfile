FROM quay.io/keycloak/keycloak:latest

# Build the optimized Keycloak first
RUN /opt/keycloak/bin/kc.sh build

# Set environment variables
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=your-secure-password
ENV KC_HOSTNAME_STRICT=false
ENV KC_HTTP_ENABLED=true

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]