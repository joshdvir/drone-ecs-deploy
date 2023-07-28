FROM silintl/ecs-deploy:3.10.11

COPY update.sh /bin/

ENTRYPOINT ["/bin/bash", "-l", "-c", "/bin/update.sh"]
