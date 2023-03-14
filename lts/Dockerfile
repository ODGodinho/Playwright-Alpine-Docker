FROM node:lts-alpine

# Support private packages NPM
ARG NPM_TOKEN

RUN chmod 666 -R /tmp

# Install Chromium
RUN apk upgrade --no-cache --available \
  && apk add --no-cache \
  chromium-swiftshader \
  ttf-freefont \
  font-noto-emoji \
  && apk add --no-cache \
  --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing \
  font-wqy-zenhei

COPY ../local.conf /etc/fonts/local.conf

# Add Chrome as a user
RUN mkdir -p /usr/src/app \
  && adduser -D chrome \
  && chown -R chrome:chrome /usr/src/app
# Run Chrome as non-privileged

ENV CHROME_BIN=/usr/bin/chromium-browser \
  CHROME_PATH=/usr/lib/chromium/

# Autorun chrome headless
ENV CHROMIUM_FLAGS="--disable-software-rasterizer --disable-dev-shm-usage"

ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
ENV PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN npx playwright install chromium
RUN cd /root/.cache/ms-playwright/chromium-* \
  && rm -rf ./chrome-linux/ \
  && mkdir chrome-linux \
  && cd chrome-linux \
  && ln -s /usr/bin/chromium-browser chrome

CMD [ "node" ]
