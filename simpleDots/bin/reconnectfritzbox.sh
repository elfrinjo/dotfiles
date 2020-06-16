#!/bin/bash

# Reconnect a Fritz.Box with activated UPnP

oldIp=$(curl -s https://canihazip.com/s)

curl "http://fritz.box:49000/igdupnp/control/WANIPConn1" \
	-H 'Content-Type: text/xml; charset="utf-8"' \
	-H 'SoapAction: urn:schemas-upnp-org:service:WANIPConnection:1#ForceTermination' \
	-d '<?xml version="1.0" encoding="utf-8"?>
        <s:Envelope
	     s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
		 xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" >
		  <s:Body>
		    <u:ForceTermination xmlns:u="urn:schemas-upnp-org:service:WANIPConnection:1" />
		  </s:Body>
		</s:Envelope>' \
	-s

sleep 5

newIp=$(curl -s https://canihazip.com/s)


notify-send "Renew IP" "Old IP: $oldIp\nNew IP: $newIp"
