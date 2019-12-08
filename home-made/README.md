# QGIS-server image

I didn't find any QGIS-server, documented, docker image, so I decided to build my own.

## Build
`make`, simply.

## Run
`docker run -i -p 82:80 --name qgs -v /home/jean/qgis-web:/home/qgis/projects mopnaej/qgisserver:0.2`
Where /home/jean/qgis-web is where you saved the qgs (or qgz) projects and the datasets

## Prepare maps to serve
See https://docs.qgis.org/3.4/en/docs/user_manual/working_with_ogc/server/getting_started.html#creatingwmsfromproject

## See it in action
### if no url rewriting configured :
Open http://localhost:82/cgi-bin/qgis_mapserv.fcgi?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetCapabilities
You will get the global capabilities
Open http://localhost:82/cgi-bin/qgis_mapserv.fcgi?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetCapabilities&map=/home/qgis/projects/world.qgs to get the capabilities for the world.qgs map

### With URL rewriting (see 000-default.conf file)
http://localhost/wms/demo/world?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetCapabilities

## Roadmap
Next versions are likely to include:
* qgis prints support (see xvfb in https://docs.qgis.org/3.4/en/docs/training_manual/qgis_server/install.html#fa-http-server-configuration)
* qgis web client 2 (https://github.com/qgis/qwc2-demo-app/blob/master/doc/QWC2_Documentation.md#quick-start)
