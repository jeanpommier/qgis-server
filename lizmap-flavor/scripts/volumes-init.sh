#!/bin/bash
# To be run from parent folder (lizmap-flavor$ ./scripts/volumes-init.sh)

if [ ! -d "./volumes" ]
then
	mkdir -p volumes/lizmap/{www,qgiscache,var/{lizmap-config,lizmap-db,lizmap-theme-config,log}}
	mkdir -p volumes/nginx
	cp -r ../sample_projects volumes/projects
	cp nginx.conf volumes/nginx/
fi
