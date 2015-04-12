# RTMPdownloader

Takes an env var RTMP_URL and downloads it using vlc $RTMP_URL --sout=file/ps:$MPG_OUTPUT   this is a proof of concept for downloading Texas legislature videos like this one

## usage
pull it
`docker pull joshuacox/RTMPdownloader`
`docker run -e RTMP_URL= rtmp://207.7.154.118/OnDemand/mp4:tlchouse/tlchouse_e8bf93a9-e186-45fd-82e7-e8fd6dbf124b.mp4 joshuacox/RTMPdownloader`
