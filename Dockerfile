FROM quay.io/keycloak/keycloak:26.0.8

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

CMD ["/opt/keycloak/bin/kc.sh", "start", "--hostname-strict=false"]
