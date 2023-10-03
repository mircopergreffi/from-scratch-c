# From Scratch C

Base repository to clone for creating lightweight containers with only a statically linked C binary.

## Environment Variables

| Variable              | Description | Example |
|-----------------------|-------------|---------|
|                       |             |         |

## Docker

### Build the image yourself

Pull the repository:
```
$ git clone https://github.com/mircopergreffi/from-scratch-c
$ cd from-scratch-c
```

Create `.env` file from `example.env` and edit it:
```
$ cp example.env .env
$ vi .env
```

Build the image:
```
$ docker build -t from-scratch-c .
```

Run the image:
```
$ docker run -d --env-file .env from-scratch-c
```