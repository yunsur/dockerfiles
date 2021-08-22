FROM rust:1-alpine3.14 as builder

RUN set -ex \
    && apk add --no-cache --update --virtual .build-deps git musl-dev upx \
    && git clone "https://github.com/Miserlou/Loop.git" /Loop \
    && cd /Loop \
    && echo '' >> Cargo.toml \
    && echo '[profile.release]' >> Cargo.toml \
    && echo 'opt-level = "z"' >> Cargo.toml \
    && echo 'lto = true' >> Cargo.toml \
    && echo 'codegen-units = 1' >> Cargo.toml \
    && echo 'panic = "abort"' >> Cargo.toml \
    && cargo build --release \
    && strip target/release/loop \
    && upx --best --lzma target/release/loop

FROM scratch

COPY --from=builder /Loop/target/release/loop /usr/local/bin/loop
