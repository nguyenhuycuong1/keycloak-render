FROM quay.io/keycloak/keycloak:26.0.8

# Enable the optimized build and set the correct bind address
ENV KC_HEALTH_ENABLED=true \
    KC_METRICS_ENABLED=true \
    KC_HTTP_RELATIVE_PATH=/auth \
    KC_HOSTNAME_STRICT=false \
    KC_HOSTNAME_STRICT_HTTPS=false

RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-port=8080", "--hostname-strict=false", "--hostname-strict-https=false", "--http-enabled=true", "--http-relative-path=/auth", "--hostname=0.0.0.0"]
