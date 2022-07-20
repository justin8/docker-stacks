This is set up mostly to allow 1Writer to sync in to my notes archive inside of Syncthing. I'm using a somewhat maintained docker image, but with some changes on top to allow for things like UID setting.

The image itself just has nginx with a basic setup and an entry point. Pretty simple stuff.

The username and password are set by the `WEBDAV_USER` and `WEBDAV_PASSWORD` variables. The `/data` folder is shared as the root of the share
