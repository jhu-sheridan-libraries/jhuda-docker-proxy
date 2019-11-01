# HTTP Proxy Image

Provides public HTTP connectivity to the JHU Data Archive by terminating SSL connections and proxying related services.  Note that any URL path which is proxied to the Shibboleth SP (`http://sp/...`) requires authorization.

Configured reverse proxy placeholders:

|Description|Public URL Path|Reverse Proxy URL|
|---|---|---|
|Shib IdP|/idp|https://idp:4443/idp|
|Shib SP|/Shibboleth.sso|http://sp/Shibboleth.sso|
|Fedora repository|/fcrepo|http://sp/fcrepo|
|Elastic Search|/es|http://sp/es|
|Ember application|/app|http://sp/app|
|Static assets|/|http://static-html:82/|

## Status
![Automated Build](https://img.shields.io/docker/cloud/automated/jhuda/proxy) ![Build Status](https://img.shields.io/docker/cloud/build/jhuda/proxy)

## Locations
* [Docker Hub](https://hub.docker.com/r/jhuda/proxy/tags) 
* [Dockerfile](Dockerfile)
* [Build History](https://hub.docker.com/r/jhuda/proxy/builds)

## Environment Variables

None.
