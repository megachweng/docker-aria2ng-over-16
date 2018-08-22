Simply run:  

```
docker run -d \
	-p 8080:80 \
	-p 6800:6800 \
	-v /download/path:/downloads \
	megachweng/aria2ng-over-16:latest  
```
