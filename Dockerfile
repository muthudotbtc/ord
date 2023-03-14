FROM rust:1.67

WORKDIR /usr/src/myapp
COPY . .

RUN cargo build --release

CMD /usr/src/myapp/target/release/ord
