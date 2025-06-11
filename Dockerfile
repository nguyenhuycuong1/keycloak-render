FROM quay.io/keycloak/keycloak:latest

# Build optimized version
RUN /opt/keycloak/bin/kc.sh build

# Environment variables for Render
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=your-secure-password
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_HTTP_ENABLED=true
ENV KC_PROXY=edge
ENV KC_HOSTNAME_URL=https://keycloak-render-n03r.onrender.com
ENV KC_HOSTNAME_ADMIN_URL=https://keycloak-render-n03r.onrender.com

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]