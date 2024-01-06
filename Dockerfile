# Sử dụng một hình ảnh Node.js như là một cơ sở
FROM node:latest

# Tạo thư mục làm việc /app và thiết lập nó làm thư mục làm việc mặc định
WORKDIR /app

# Sao chép mã nguồn ứng dụng vào hình ảnh
COPY . .

# Cài đặt các gói cần thiết bằng npm
RUN npm install

# Xây dựng ứng dụng
RUN npm run build

# Expose cổng mà ứng dụng chạy trên
EXPOSE 8081

# Khởi chạy ứng dụng khi container được khởi động
CMD ["npm", "start"]
