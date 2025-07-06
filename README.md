# dockercrack

1] docker pull woodcraftbot/torrent-downloader-bot:latest
2] docker run -it --rm woodcraftbot/torrent-downloader-bot:latest bash
3] ls
4] cd /app
5] apt update && apt install -y zip
6] zip -r /tmp/app-files.zip *
7] [other terminal] docker ps
8] [other terminal] docker cp 1f0e37d6cc3d:/tmp/app-files.zip app-files.zip
9] [other terminal] python3 -m http.server 8080
