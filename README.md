[NxFilter](https://www.nxfilter.org/p3/) - Your Free DNS Filter! Fast, Light, Powerful yet Free

# Distros and respective Dockerfile links

-	[`alpine`](https://github.com/suportetikrn/nxfilter/blob/master/alpine/Dockerfile)
-	[`centos`](https://github.com/suportetikrn/nxfilter/blob/master/debian/Dockerfile)
-	[`debian`](https://github.com/suportetikrn/nxfilter/blob/master/centos/Dockerfile)

# Pull a respective distro

## Alpine
```docker pull suportetikrn/nxfilter:latest-alpine```

## CentOS
```docker pull suportetikrn/nxfilter:latest-centos```

## Debian
```docker pull suportetikrn/nxfilter:latest-debian```


# Quick start

**Creating a volatile container without persistent data, just for testing**

```docker run -it --rm  --name nxf -p 53:53/udp -p 80:80 suportetikrn/nxfilter:latest-alpine```
