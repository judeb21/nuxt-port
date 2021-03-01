FROM alpine:3.10

# update and install dependency
RUN apk add --update nodejs-current npm
RUN apk add git

# create destination directory
WORKDIR /app
ADD . /app/

RUN npm install
RUN npm run generate
RUN npm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD [ "npm", "start" ]