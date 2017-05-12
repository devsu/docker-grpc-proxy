# docker-grpc-proxy
A ready to use, lightweight, configurable grpc proxy.

## Usage

- Create your `config.json` file, following the documentation of [grpc-proxy](https://github.com/devsu/grpc-proxy).
- Then execute:

```bash
docker run --name my-grpc-proxy \
  -p 50051:50051 \
  -v $PWD:/opt/grpc-proxy \
  devsu/grpc-proxy
```

You can place the needed certificates and keys on the same folder as well.

## License and Credits

MIT License. Copyright 2017

Built by the [Docker experts](https://devsu.com) at Devsu.
