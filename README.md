# Go Web Application

This is a simple website written in Golang. It uses the `net/http` package to serve HTTP requests.

## Build the application

To build the application, execute the command below:

```bash
go build -o main
```

## Running the server

To run the server, execute the following command:

```bash
go run main.go
```

## Use Docker to Build, Run and Push the image to DockerHub

```bash
docker build -t gyenoch/go-web-app:v1 .
```

```bash
docker run -p 8080:8080 gyenoch/go-web-app:v1
```

```bash
docker push gyenoch/go-web-app:v1
```

The server will start on port 8080. You can access it by navigating to `http://localhost:8080/courses` in your web browser.

## Looks like this

![Website](static/images/golang-website.png)


