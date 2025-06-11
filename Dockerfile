FROM quay.io/keycloak/keycloak:26.0.8

# Tùy chọn: Copy các provider hoặc cấu hình tùy chỉnh nếu có
# COPY ./your-theme /opt/keycloak/themes/your-theme

# Build image với chế độ production
RUN /opt/keycloak/bin/kc.sh build

# Thiết lập môi trường nếu cần
ENV KC_HEALTH_ENABLED=true \
    KC_METRICS_ENABLED=true

# Khởi động Keycloak mà không dùng --hostname-strict-https
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
