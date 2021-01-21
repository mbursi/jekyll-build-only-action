# Image details: https://github.com/envygeeks/jekyll-docker/blob/master/README.md
FROM jekyll/builder:latest
USER root
ADD build.sh /build.sh
ENTRYPOINT [ "bash", "/build.sh" ]
