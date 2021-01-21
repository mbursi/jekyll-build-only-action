# Image details: https://github.com/envygeeks/jekyll-docker/blob/master/README.md
FROM jekyll/builder:latest
ADD build.sh /build.sh
ENTRYPOINT [ "/build.sh" ]