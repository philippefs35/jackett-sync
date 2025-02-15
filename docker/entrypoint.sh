#!/bin/sh

[[ -z "$URL" ]] && \
  echo "Please set Jackett URL." && exit 1

[[ -z "$APIKEY" ]] && \
  echo "Please set Jackett api key." && exit 1

URL="--url $URL"
APIKEY="--apikey $APIKEY"

[[ ! -z "$ALTURL" ]] && \
  ALTURL="--alturl $ALTURL"

[[ ! -z "$SONARR_URL" ]] && \
  SONARR_URL="--sonarrurl $SONARR_URL"

[[ ! -z "$SONARR_KEY" ]] && \
  SONARR_KEY="--sonarrkey $SONARR_KEY"

[[ ! -z "$SONARR_CATS" ]] && \
  SONARR_CATS="--sonarrcats $SONARR_CATS"

[[ ! -z "$SONARR_ANIME_CATS" ]] && \
  SONARR_ANIME_CATS="--sonarranimecats $SONARR_ANIME_CATS"

[[ ! -z "$RADARR_URL" ]] && \
  RADARR_URL="--radarrurl $RADARR_URL"

[[ ! -z "$RADARR_KEY" ]] && \
  RADARR_KEY="--radarrkey $RADARR_KEY"

[[ ! -z "$RADARR_CATS" ]] && \
  RADARR_CATS="--radarrcats $RADARR_CATS"

[[ ! -z "$LIDARR_URL" ]] && \
  LIDARR_URL="--lidarrurl $LIDARR_URL"

[[ ! -z "$LIDARR_KEY" ]] && \
  LIDARR_KEY="--lidarrkey $LIDARR_KEY"

[[ ! -z "$LIDARR_CATS" ]] && \
  LIDARR_CATS="--lidarrcats $LIDARR_CATS"

[[ ! -z "$WHISPARR_URL" ]] && \
  WHISPARR_URL="--whisparrurl $WHISPARR_URL"

[[ ! -z "$LIDARR_KEY" ]] && \
  WHISPARRR_KEY="--whisparrkey $WHISPARR_KEY"

[[ ! -z "$LWHISPARR_CATS" ]] && \
  WHISPARR_CATS="--whisparrcats $WHISPARR_CATS"

[[ ! -z "$SEEDS" ]] && \
  SEEDS="--seeds $SEEDS"

[[ ! -z "$SYNC" ]] && \
  SYNC="--sync"  

cd /jackett-sync

yarn start $SYNC $SEEDS $URL $APIKEY $ALTURL \
	$SONARR_URL $SONARR_KEY $SONARR_CATS $SONARR_ANIME_CATS \
	$RADARR_URL $RADARR_KEY $RADARR_CATS \
	$LIDARR_URL $LIDARR_KEY $LIDARR_CATS \
  $WHISPARR_URL $WHISPARR_KEY $WHISPARR_CATS $*