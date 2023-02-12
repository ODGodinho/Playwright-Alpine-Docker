docker build ./lts --tag dragonsgamers/playwright-alpine:latest \
    && docker run dragonsgamers/playwright-alpine:latest \
    && docker push dragonsgamers/playwright-alpine:latest

docker build ./16 --tag dragonsgamers/playwright-alpine:16 \
    && docker run dragonsgamers/playwright-alpine:16 \
    && docker push dragonsgamers/playwright-alpine:16
