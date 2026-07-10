FROM rust:1.85-bookworm

ARG RUSTLINGS_VERSION=6.4.0

RUN rustup component add clippy
RUN cargo install rustlings --version "${RUSTLINGS_VERSION}" --locked

WORKDIR /workspace

ENTRYPOINT ["rustlings", "run"]
