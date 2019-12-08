;<?php die(''); ?>
;for security reasons , don't remove or modify the first line

; put here configuration variables that are specific to this installation


; chmod for files created by Lizmap and Jelix
chmodFile=0664
chmodDir=0775

domainName = qgis.pigeo.fr

[modules]
;; uncomment it if you want to use ldap for authentication
;; see documentation to complete the ldap configuration
;ldapdao.access=1
lizmap.installparam=demo

[coordplugin_auth]
;; uncomment it if you want to use ldap for authentication
;; see documentation to complete the ldap configuration
;driver=ldapdao

[coordplugins]
lizmap=lizmapConfig.ini.php

[urlengine]
checkHttpsOnParsing = off
#forceProxyProtocol = https
