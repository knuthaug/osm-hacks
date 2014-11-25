#!/bin/bash

mkdir -p tmp
cd tmp
#wget http://download.geofabrik.de/europe/norway-latest.osm.pbf

osm2pgsql --create --slim \
    --cache 1000 --number-processes 2 --hstore \
    --style ~/src/m/osm-hacks/mtbmap/openstreetmap-carto.style --multi-geometry \
    ~/src/m/osm-hacks/tmp/norway-latest.osm.pbf

#rm norway-latest.osm.pbf
