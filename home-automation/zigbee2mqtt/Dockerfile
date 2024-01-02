FROM koenkk/zigbee2mqtt

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD [ "/sbin/tini", "--", "node", "index.js"]
