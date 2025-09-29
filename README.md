# Iceberg Local Lab (Docker)

本项目提供一个本地可运行的 Iceberg 开发环境，基于：
- MinIO（对象存储）
- PostgreSQL（Hive Metastore DB）
- Hive Metastore（Thrift 服务）
- Spark（离线写 Iceberg）
- Trino（交互式查询 Iceberg）

## 启动
docker-compose up -d

## 初始化 MinIO
mc alias set local http://localhost:9000 minio minio123
mc mb local/iceberg

## 使用 Spark 写 Iceberg 表
docker exec -it spark spark-sql -f /opt/spark-apps/example.sql

## 使用 Trino 查询
docker exec -it trino trino \
  --server localhost:8080 \
  --catalog iceberg --schema db1 \
  -e "SELECT * FROM tbl1;"

## 组件访问
- MinIO Console: http://localhost:9001
- PostgreSQL: localhost:5432 (hive/hive)
- Hive Metastore: localhost:9083
- Spark Master UI: http://localhost:8080
- Trino UI: http://localhost:8081
