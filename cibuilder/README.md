# lets build a own jenkins

```
docker build -t cibuilder .

docker tag :latest myjenkins:staging

docker run -it --name cibuilder cibuilder

```
