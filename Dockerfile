FROM node:latest

RUN npm install -g --unsafe-perm grpc-tools grpc_tools_node_protoc_ts

RUN echo 'alias protoc="grpc_tools_node_protoc"' >> /root/.bashrc
