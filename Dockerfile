FROM rustlang/rust:nightly

WORKDIR /usr/src/myapp
COPY . .

RUN cargo +nightly build --release -Z sparse-registry

CMD /usr/src/myapp/target/release/ord
