# ベースイメージとしてNode.jsを指定
FROM node:18.18.0

# 作業ディレクトリを設定
WORKDIR /app

# パッケージファイルをコピー (package.json と package-lock.json)
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションコードをコンテナにコピー
COPY . .

# コンテナがExposeするポートを指定 (例: 3000)
EXPOSE 3000

# アプリケーションの実行コマンドを指定
CMD ["npm", "start"]

