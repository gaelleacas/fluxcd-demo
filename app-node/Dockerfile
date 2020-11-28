FROM node:15.3.0
WORKDIR /app
COPY . /app
RUN yarn --pure-lockfile

FROM node:15.3.0-alpine

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE


WORKDIR /app
COPY --from=0 /app /app
COPY . /app

EXPOSE 8080

CMD ["yarn", "start"]