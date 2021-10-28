## Calibre

```systemd
[Unit]                                                                                                    Description=calibre content server                                                                        After=network.target                                                                                                                                                                                                [Service]
Type=simple
User=david
Group=david
# Below with password auth (david)
#ExecStart=/opt/calibre/calibre-server --userdb /home/david/.local/share/calibre/users.sqlite "/home/david/calibre" --enable-auth --auth-mode=basic --listen-on 127.0.0.1 --url-prefix /calibre --port 7889
ExecStart=/opt/calibre/calibre-server --userdb /home/david/.local/share/calibre/users.sqlite "/home/david/calibre" --enable-local-write --listen-on 127.0.0.1 --url-prefix /calibre-UEnPRT1JB9kDAsyweaKqJh --port 7889

[Install]
WantedBy=multi-user.target
```

```nginx
location /calibre-UEnPRT1JB9kDAsyweaKqJh/ {
	proxy_pass http://127.0.0.1:7889$request_uri;
	proxy_buffering off;
	proxy_set_header X-Forwarded-For $remote_addr;                                                            }
	location /calibre-UEnPRT1JB9kDAsyweaKqJh {
# we need a trailing slash for the Application Cache to work
		rewrite /calibre-UEnPRT1JB9kDAsyweaKqJh /calibre-UEnPRT1JB9kDAsyweaKqJh/ permanent;
	}
```
