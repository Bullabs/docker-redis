FROM docker.pkg.github.com/bullabs/docker-alpine-base/docker-alpine-base:3.13
LABEL maintainer "Bullabs <containers@bullabs.dev>"
ENV BULLABS_APP_NAME="template"

# Install required system packages and dependencies  

COPY rootfs /

USER 1001
ENTRYPOINT [ "/opt/bullabs/scripts/dotnet/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/redis/run.sh" ]
