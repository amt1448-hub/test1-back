# Pythonのイメージ
FROM python:3.12-slim

# 必要なパッケージをインストールする
RUN apt-get update
RUN pip install fastapi uvicorn

# ローカルのソースコードをコピーする
COPY *.py .

# ポート指定
EXPOSE 8080

# コンテナ起動時に実行するコマンドを設定する
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port=8080"]
