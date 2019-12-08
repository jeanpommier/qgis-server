# QGIS-server  + lizmap web client

This is a working lizmap-flavor qgisserver + client

## Run
Simply running `make docker-run` should start a docker-compose composition that should run just fine. At least on Linux.

On Windows, it will work if you have a Linux subsystem installed. Else, you'll have to create the volumes manually and copy the nginx.conf file into volumes/nginx folder.

## QGIS projects
Some sample projects are copied in the volumes/projects directory. Place your own projects in there (needs to be projects configured with the lizmap QGIS extension)

Then you have to configure them on lizmap:
* log in ('admin:admin')
* Open configuration menu
* Set the project selector *on*
* Add a lizmap repository
  * select your project
  * check 'authorize javascript themes/codes'
  * set authorization for groups (allow admin, apparently allowing anonymous doesn't mean it allows admins, weirdly)
* Open the projects page

## More information
Some references:
* http://docs.3liz.com/
* https://docs.qgis.org/testing/en/docs/training_manual/qgis_server/wms.html
