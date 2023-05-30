# Node.jsの公式イメージをベースにする
FROM node:latest

# アプリケーションのソースコードをコンテナ内にコピーする
WORKDIR /app
COPY *.ts package.json package-lock.json tsconfig.json /app/

# アプリケーションの依存関係をインストールする
RUN npm install --omit=dev

# アプリケーションをコンパイルする
RUN npx tsc

# アプリケーションを実行するコマンドを指定する
CMD ["node", "index.js"]