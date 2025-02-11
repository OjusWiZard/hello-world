ARG AUTONOMY_IMAGE_VERSION="latest"
ARG AUTONOMY_IMAGE_NAME="valory/open-autonomy"
FROM ${AUTONOMY_IMAGE_NAME}:${AUTONOMY_IMAGE_VERSION}

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

HEALTHCHECK --interval=3s --timeout=600s --retries=600 CMD echo "Add your healthcheck command here" > /dev/null; if [ 0 != $? ]; then exit 1; fi;