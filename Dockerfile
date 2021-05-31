FROM alpine:latest

# Incoming data stream port
EXPOSE 1234

# Port for querying the current sample using REST API
EXPOSE 4321

WORKDIR /Dev/

COPY ./target/x86_64-unknown-linux-musl/release/reservoir_sampling ./reservoir_sampling

RUN chmod u+x reservoir_sampling

ENTRYPOINT ["./reservoir_sampling"]
