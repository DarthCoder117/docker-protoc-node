# docker-protoc-node

Docker image containing the node.js/TypeScript protobuf/gRPC tools.

## node.js

The node.js image contains the node, npm, and the protoc compiler installed through npm (`grpc_tools_node_protoc`).
This image also sets an alias to make node gRPC tools callable as `protoc` like normal.

```bash
protoc \
    --js_out=import_style=commonjs,binary:"foo/out" \
    --ts_out=import_style=commonjs,binary:"foo/out" \
    --grpc_out="foo/out" \
    --plugin=protoc-gen-grpc="/usr/local/bin/grpc_tools_node_protoc_plugin" \ # leave this out to disable gRPC generation
    --plugin=protoc-gen-ts="/usr/local/bin/protoc-gen-ts" \ # leave this line to disable generating typings
    "proto/Bar.proto"
```