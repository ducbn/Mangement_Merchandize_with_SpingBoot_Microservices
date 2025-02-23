# Mangement Merchandize with SpingBoot Microservices
## Giới Thiệu
![image](https://github.com/ducbn/Mangement_Merchandize_with_SpingBoot_Microservices/blob/main/img.png)
---

## Công Nghệ Sử Dụng

### **Frontend**
- **Angular / TypeScript** - Xây dựng giao diện người dùng.
- **HTML, CSS, Tailwind CSS** - Thiết kế giao diện hiện đại, tối ưu hiển thị.

### **Backend**
- **Spring Boot** - Xây dựng hệ thống microservices.
- **API Gateway** - Điều phối request giữa frontend và backend.
- **Keycloak** - Hệ thống xác thực và phân quyền người dùng.
- **Resilience4J** - Đảm bảo hệ thống chịu lỗi tốt.
- **Apache Kafka** - Hỗ trợ giao tiếp bất đồng bộ giữa các service.

### **Cơ Sở Dữ Liệu**
- **MySQL** - Lưu trữ dữ liệu của Order Service, Inventory Service.
- **MongoDB** - Lưu trữ dữ liệu của Product Service.

### **Giám Sát & Kiểm Tra**
- **Prometheus, Grafana, Loki, Tempo** - Thu thập logs, giám sát hiệu suất hệ thống.
- **OpenTelemetry** - Giám sát hiệu năng ứng dụng.

---

## Kiến Trúc Hệ Thống

Hệ thống bao gồm các **microservices** chính:

1️ **API Gateway**  
   - Điều phối request từ frontend đến backend.

2️ **Authen Server (Keycloak)**  
   - Xác thực và quản lý quyền truy cập người dùng.

3️ **Product Service**  
   - Quản lý thông tin sản phẩm, sử dụng **MongoDB**.

4️ **Order Service**  
   - Xử lý đơn hàng, lưu trữ dữ liệu trong **MySQL**.

5️ **Inventory Service**  
   - Kiểm tra số lượng tồn kho của sản phẩm.

6️ **Notification Service**  
   - Gửi email thông báo khi có đơn hàng mới, sử dụng **Kafka**.

---

## Luồng Hoạt Động Chính

1️ Người dùng truy cập **Frontend** để đặt hàng.  
2️ **API Gateway** nhận request và chuyển đến service phù hợp.  
3️ Khi đặt hàng:  
   - **Order Service** kiểm tra kho hàng thông qua **Inventory Service**.  
   - Nếu có hàng, đơn hàng được lưu vào **MySQL**.  
   - **Kafka** gửi sự kiện đến **Notification Service** để gửi email xác nhận.  
4️ Hệ thống sử dụng **Resilience4J** để đảm bảo hoạt động ổn định.  

---

