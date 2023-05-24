# 使用 Python 3.9 作為基礎映像檔
FROM python:3.9

# 設定工作目錄
WORKDIR /app

# 複製專案檔案到容器中
COPY . .

# 安裝相依套件
RUN pip install --no-cache-dir -r requirements.txt

# 暴露 8080 埠號
EXPOSE 8080

# 設定容器啟動時執行的命令
CMD ["python", "index.py"]