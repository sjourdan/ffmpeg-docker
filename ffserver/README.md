# FFserver

Reference: [documentation for FFserver](https://ffmpeg.org/ffserver.html).

## FFServer as Audio MP3 Stream Server

This is a sample usage for FFServer.

- Create a folder where you'll put the mp3 files to stream

        ls ./audio/file1.mp3

- Create a [sample configuration file](./config/file.conf):

        vim ./config/file.conf

This is where you'll want to change some settings like the HTTP port or the filename.

- Execute the ffserver container with the audio and config volumes, as well as the configuration file for this case:

        docker run -d \
        -v `pwd`/audio:/audio \
        -v `pwd`/config:/etc/ffserver \
        -p 8090:8090 \
        sjourdan/ffserver:3.0 \
        -f /etc/ffserver/file.conf

- You can now access the _stats_ page from your browser: [http://192.168.99.100:8090/stat.html](http://192.168.99.100:8090/stat.html) by default on docker-machine or [http://127.0.0.1:8090/stat.html](http://127.0.0.1:8090/stat.html) on linux and note the stream of the file is available. There's some information about the number of connexions, the bandwidth etc.

- The file can now be streamed from [http://192.168.99.100:8090/file1.mp3](http://192.168.99.100:8090/file1.mp3) (adapt the IP) with a player like VLC or an HTML5 web player.

## Apache Reverse Proxy CORS Example

To add the CORS authorization to the stream server headers using Apache, on Ubuntu - and replace `"*"` by whatever domain you want:

```
$ cat /etc/apache2/sites-enabled/000-default.conf

<VirtualHost *:80>
  ServerName a.b.c.d
  DocumentRoot "/var/www/html"
  Header set Access-Control-Allow-Origin "*"
  <Location />
    ProxyPass http://a.b.c.d:8090/file1.mp3
  </Location>

  <Directory "/var/www/html">
    AllowOverride None
    Order allow,deny
    Allow from all
  </Directory>
</VirtualHost>
```

Then restart Apache:

```
a2enmod headers proxy_http
service apache2 restart
```
