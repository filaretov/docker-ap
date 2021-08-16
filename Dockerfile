FROM arm32v7/alpine:3.14

RUN apk add --no-cache bash hostapd iptables dhcp iproute2 iw
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]
