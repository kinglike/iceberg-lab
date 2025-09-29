# Iceberg Local Lab (Docker)

本项目提供一个本地可运行的 **Iceberg 开发环境**，基于：
- MinIO（对象存储，S3 兼容）
- Postgres（Hive Metastore DB）
- Hive Metastore（Thrift 服务）
- Spark（离线写 Iceberg）
- Trino（交互式查询 Iceberg）

## 🚀 启动
```bash
docker-compose up -d
