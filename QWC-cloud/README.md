# QWC-cloud composition

[QWC2](https://github.com/qgis/qwc2-demo-app/blob/master/doc/QWC2_Documentation.md) is the current modern web client for qgis server apps.

The doc seems quite extensive, but ease of use doesn't seem the primary feature...

I was wondering how come you don't find a clean docker infra using QWC2, *a la Lizmap*.
In summer 2019, [a presentation at foss4GIS](https://blog.sourcepole.ch/assets/2019/qwc2-foss4g19.pdf) exposed such a solution : https://github.com/qwc-services/qwc-docker

Here is my composition making use of those docker assets.


## Build
Well, actually, the [qwc-docker instructions](https://github.com/qwc-services/qwc-docker/blob/master/README.md), although intimidating, is quite straightforward.

**First step** is to clone the [QWC2 demo app](https://github.com/qgis/qwc2-demo-app/blob/master/doc/QWC2_Documentation.md#quick-start) and build it. You can eventually cusmotize it but it's not mandatory, it will be just fine as-is

**Second step** is to copy the files as documented on [https://github.com/qwc-services/qwc-docker/blob/master/README.md#setup](https://github.com/qwc-services/qwc-docker/blob/master/README.md#setup). Beware that for now, there are a few glitches:
* the translations are to be copied in a translations subdirectory
* you need to remove the `/bin/sh -c apt-get update && apt-get upgrade -y` command in the qgis-server/Dockerfile
Those glitches are documented in the github issues...

**Third step**, configure your themesConfig.json (adapt from the themesConfig-example.json, following the documentation)

**Fourth step**: `docker-compose build`

And since all this is mostly about configuring the volumes' data, you could skip the build and just go with pre-built images

## Run
Either you first build the images

Or you can use the alternate docker-compose-prebuilt.yml file using some pre-built docker images (the basic ones, like you'd get if building them from the un-tampered demo app): `docker-compose -f docker-compose-prebuilt.yml up`

## Configure several viewers / maps
You probably don't want to publish all your maps as themes in a single map viewer app. There is a way. It is sort of documented, but really not emphasized...

Remember from the [demo doc](https://github.com/qgis/qwc2-demo-app/blob/master/doc/QWC2_Documentation.md#generating-themesjson) that the themesConfig.json is used as input to generate the themes.json file, which is the config file QWC2 reads, actually.

Okay, so we need a way to define per-map themes.

Now have a look at the [map viewer doc](https://github.com/qwc-services/qwc-map-viewer#custom-viewer-configurations), you can have per-viewer services. You just need to declare the QWC2_VIEWERS_PATH env var for the container and point to a volume where you will put your <viewer>.json and <viewer>.html files. Seems quite easy. Not tested yet, though.

Pb is, you still need to generate the themes.json file from the themesConfig.json.
Also have to check what the config container does with the themesConfig.json (pointed to by an env var)
