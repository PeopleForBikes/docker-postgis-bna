FROM postgis/postgis:17-3.4
LABEL author="PeopleForBikes" \
  maintainer="BNA Mechanics - https://peopleforbikes.github.io" \
  org.opencontainers.image.description="PostGIS w/ tools and extensions necessary to run the BNA." \
  org.opencontainers.image.source="https://github.com/peopleforbikes/docker-postgis-bna" \
  org.opencontainers.image.licenses=MIT

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  postgresql-17-pgrouting \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
