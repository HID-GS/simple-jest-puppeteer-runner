FROM node:slim
RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y xvfb \
    && apt-get install -y libxcomposite1 \
    && apt-get install -y libxcursor1 \
    && apt-get install -y libxi6 \
    && apt-get install -y libxtst6 \
    && apt-get install -y libnss3 \
    && apt-get install -y libcups2 \
    && apt-get install -y libxss1 \
    && apt-get install -y libxrandr2 \
    && apt-get install -y libasound2 \
    && apt-get install -y libatk1.0-0 \
    && apt-get install -y libatk-bridge2.0-0 \
    && apt-get install -y libgtk-3-0

ENV NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

RUN npm -g i puppeteer --unsafe-perm=true \
    && npm -g i jest

WORKDIR /app

#ENTRYPOINT ['node']

#CMD ['/app/index.js']
