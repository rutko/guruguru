FROM node:16.13.0


WORKDIR /code

# Set environment variables
ENV PORT 8080
ENV HOST 0.0.0.0


# Install dependencies
COPY package*.json yarn.lock /code/
RUN yarn install

# Nuxtプロジェクトのコードをコンテナにコピー
COPY . /code/

RUN yarn run build
