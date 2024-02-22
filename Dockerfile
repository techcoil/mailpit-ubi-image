FROM axllent/mailpit as builder

FROM registry.access.redhat.com/ubi9/ubi-init:9.3 as runtime
USER root

ENV NAME=mailpit \
    CONTAINER_NAME="techcoil/mailpit"

COPY --from=builder /mailpit /mailpit

USER 1001

ENTRYPOINT ["/mailpit"]

# Expose the SMTP and HTTP ports:
EXPOSE 1025 8025
