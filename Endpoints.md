# UniOBS Relay Endpoints

##### Table of Contents
[Oven-Media-Engine](#Oven-Media-Engine)  
[Emphasis](#emphasis)


## Oven-Media-Engine

### OBS Input
    srt://relay.unieveth.com:9999?streamid=srt%3A//relay.unieveth.com%3A9999/cleanfeed/<name>
######
    * URL: `rtmp://localhost:1935/cleanfeed`
    * Stream Key: `hello`

[ServerIP]
### Online Viewer
    ws://relay.unieveth.com:3333/cleanfeed/stream

### VLC/vMix Input
#### HLS streaming URL
    http://relay.unieveth.com:8080/cleanfeed/stream/playlist.m3u8
#### MPEG-DASH streaming URL
    http://relay.unieveth.com:8080/cleanfeed/stream/manifest.mpd
##### Low-Latency MPEG-DASH streaming
    http://relay.unieveth.com:8080/app/stream/manifest_ll.mpd

## RTMP

### OBS Input
* URL: `rtmp://localhost:1935/stream`
* Stream Key: `hello`

### Watch Stream
* Load up the example hls.js player in your browser:
```
http://localhost:8080/player.html?url=http://localhost:8080/live/hello.m3u8
```

* Or in Safari, VLC or any HLS player, open:
```
http://localhost:8080/live/$STREAM_NAME.m3u8
```
* Example Playlist: `http://localhost:8080/live/hello.m3u8`
* FFplay: `ffplay -fflags nobuffer rtmp://localhost:1935/stream/hello`

## SRT

Example Sending of SRT in OBS:
* In the setup menu under "stream", select "Custom..."  leave the Key field blank.
* Put the following url to send to your docker container: `srt://your.server.ip:1935?streamid=input/live/yourstreamname`

Example of Receiving of SRT in OBS:
* Add a Media Source
* Put the following url to receive: `srt://your.server.ip:1935?streamid=output/live/yourstreamname`