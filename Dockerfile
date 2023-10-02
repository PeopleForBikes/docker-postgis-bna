FROM postgis/postgis:13-3.1
LABEL author="PeopleForBikes" \
  maintainer="BNA Mechanics - https://peopleforbikes.github.io" \
  org.opencontainers.image.description="PostGIS w/ tools and extensions necessary to run the BNA." \
  org.opencontainers.image.source="https://github.com/rgreinho/docker-postgis-bna"

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  postgresql-13-pgrouting \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
