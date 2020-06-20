# lets build a own jenkins

```
docker build -t myjenkins .

docker tag myjenkins:latest myjenkins:staging

docker run -d -p 8080:8080 \
  -v $PWD/jenkins:/opt/jenkins \
  -v $HOME/workspace:/opt/workspace \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e JENKINS_HOME=/opt/jenkins \
  -e JAVA_HOME=/usr \
  --name myjenkins \
  myjenkins
```
