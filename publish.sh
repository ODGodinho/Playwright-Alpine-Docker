docker build ./lts --tag dragonsgamers/playwright-alpine:latest \
    && docker run dragonsgamers/playwright-alpine:latest \
    && docker push dragonsgamers/playwright-alpine:latest

docker build ./16 --tag dragonsgamers/playwright-alpine:16 \
    && docker run dragonsgamers/playwright-alpine:16 \
    && docker push dragonsgamers/playwright-alpine:16

docker build ./18 --tag dragonsgamers/playwright-alpine:18 \
    && docker run dragonsgamers/playwright-alpine:18 \
    && docker push dragonsgamers/playwright-alpine:18

docker build ./20 --tag dragonsgamers/playwright-alpine:20 \
    && docker run dragonsgamers/playwright-alpine:20 \
    && docker push dragonsgamers/playwright-alpine:20

docker build ./lts --tag dragonsgamers/playwright-alpine:24 \
    && docker run dragonsgamers/playwright-alpine:24 \
    && docker push dragonsgamers/playwright-alpine:24

docker build ./bun --tag dragonsgamers/playwright-alpine:bun \
    && docker run --entrypoint bun dragonsgamers/playwright-alpine:bun --version \
    && docker push dragonsgamers/playwright-alpine:bun
