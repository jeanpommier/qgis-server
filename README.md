# QGIS-server image

I didn't find any easy-to-use QGIS-server solutions, documented, so I decided to
experiment different solutions there, with docker-compose files that should run
just fine without advanced knwoledge or any external dependency.

For now, there are:
* home-made: my first experiment with qgisserver, hand-made. I'm keeping it more as archive than anything else.
* lizmap-flavor : features a QGIS server in a 3Liz docker image, with a lizmap web client.
* QWC-cloud : features a QWC2 client 'a la QGIS Cloud'. Reference is https://blog.sourcepole.ch/assets/2019/qwc2-foss4g19.pdf


This repo makes use of the [git-subrepo](https://github.com/ingydotnet/git-subrepo) tool, in order to manage some dependencies without
the hassle of git submodules
