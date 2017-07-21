FROM alpine:3.5

RUN apk --no-cache add curl ca-certificates bash

RUN curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy -o /bin/ecs-deploy \
    && chmod +x /bin/ecs-deploy

COPY update.sh /bin/

ENTRYPOINT ["/bin/bash"]

CMD ["/bin/update.sh"]