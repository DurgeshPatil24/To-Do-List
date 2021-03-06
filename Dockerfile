FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /SIMPLE-TODO
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]