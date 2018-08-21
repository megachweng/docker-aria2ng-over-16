Simply run:  

```
docker run -d \
	-p 8080:80 \
	-p 6800:6800 \
	-v /download/path:/downloads \
	-v /conf:/aria2c \
	megachweng/docker-aria2ng-over-16:latest  
```
