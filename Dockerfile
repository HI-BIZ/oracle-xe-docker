# Dùng Oracle XE (phiên bản nhẹ, miễn phí)
FROM gvenzl/oracle-xe:21-slim

# Đặt mật khẩu cho user SYS, SYSTEM và PDBADMIN
ENV ORACLE_PASSWORD=YourStrongPassword

# Tạo user teamuser với password TeamPass123
ENV APP_USER=teamuser
ENV APP_USER_PASSWORD=TeamPass123

# Copy script khởi tạo để tạo user schema
COPY init.sql /container-entrypoint-initdb.d/init.sql
