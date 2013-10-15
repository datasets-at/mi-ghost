
log "setting real hostname"

gsed -i \
        -e "s/%HOSTNAME%/${HOSTNAME}/" \
        /opt/ghost/config.js

log "starting ghost blogging platform"

/usr/sbin/svcadm enable ghost

log "starting nginx proxy"

/usr/sbin/svcadm enable nginx
