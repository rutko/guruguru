FROM node:16.13.0

ARG _NODE_ENV

WORKDIR /code

# Set environment variables
ENV NODE_ENV ${_NODE_ENV}
ENV LANG C.UTF-8
ENV PORT 8080
ENV HOST 0.0.0.0


# Install dependencies
COPY package*.json yarn.lock /code/
RUN yarn install

# Nuxtプロジェクトのコードをコンテナにコピー
COPY . /code/

RUN yarn run build
