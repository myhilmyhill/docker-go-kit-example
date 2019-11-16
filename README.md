# docker-go-kit-example

1. Clone
```
$ git clone https://github.com/myhilmyhill/docker-go-kit-example.git
$ cd docker-go-kit-example
```

2. Put an example
```
$ curl -o main.go https://raw.githubusercontent.com/go-kit/kit/master/examples/stringsvc1/main.go
```

3. Build
```
$ docker build -t go-kit-example .
```

4. Run
```
$ docker run -d --rm -p 8080:8080/tcp --name example go-kit-example
```

5. Use
```
$ curl -X POST -d "{""s"":""hello, world""}" localhost:8080/uppercase
{"v":"HELLO, WORLD"}
$ curl -X POST -d "{""s"":""hello, world""}" localhost:8080/count
{"v":12}
```

6. Stop
```
$ docker stop example
```
