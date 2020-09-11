FROM node:12-alpine

WORKDIR /Reviews-Proxy-Server
COPY package*.json ./
RUN npm install --production

RUN npm install pm2 -g

ENV PORT 3000
ENV URL 18.220.128.111

# Load balancers:
ENV REVIEWS_TARGET http://18.221.132.56
ENV REVIEWS_SCRIPT http://18.221.132.56/dist/bundle.js
ENV SB_TARGET http://54.226.16.178/
ENV SB_SCRIPT http://54.226.16.178/bundle.js
ENV NODE_ENV production

EXPOSE 3000

COPY . .
# Runs node in production mode
CMD ["pm2-runtime", "server/index.js"]
