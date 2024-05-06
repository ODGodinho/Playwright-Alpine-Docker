docker build ./lts --tag dragonsgamers/playwright-alpine:latest \
    && docker run dragonsgamers/playwright-alpine:latest \
    && docker push dragonsgamers/playwright-alpine:latest

docker build ./16 --tag dragonsgamers/playwright-alpine:16 \
    && docker run dragonsgamers/playwright-alpine:16 \
    && docker push dragonsgamers/playwright-alpine:16

docker build ./18 --tag dragonsgamers/playwright-alpine:18 \
    && docker run dragonsgamers/playwright-alpine:18 \
    && docker push dragonsgamers/playwright-alpine:18

docker build ./lts --tag dragonsgamers/playwright-alpine:20 \
    && docker run dragonsgamers/playwright-alpine:20 \
    && docker push dragonsgamers/playwright-alpine:20
