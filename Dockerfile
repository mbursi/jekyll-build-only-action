#Image details: https://github.com/envygeeks/jekyll-docker/blob/master/README.md
FROM jekyll/builder:latest
COPY build.sh /build.sh
ENTRYPOINT [ "/build.sh" ]