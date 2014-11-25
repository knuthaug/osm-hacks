#!/bin/bash

sudo -u postgres createuser -s osm
createdb gis
psql -d gis -c 'CREATE EXTENSION hstore; CREATE EXTENSION postgis;'
