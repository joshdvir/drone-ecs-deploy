FROM silintl/ecs-deploy:3.9.1

COPY update.sh /bin/

ENTRYPOINT ["/bin/bash"]

CMD ["/bin/update.sh"]
