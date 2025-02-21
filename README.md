# Mangement_Merchandize_with_SpingBoot_Microservices
## 📌 Giới Thiệu

Dự án này là một hệ thống thương mại điện tử được xây dựng theo **kiến trúc microservices**, sử dụng **Spring Boot** cho backend và **Angular** cho frontend. Hệ thống được thiết kế để đảm bảo **hiệu suất cao, mở rộng linh hoạt và khả năng chịu lỗi tốt**.
![image](https://github.com/ducbn/Mangement_Merchandize_with_SpingBoot_Microservices/blob/main/img.png)
---

## 🛠 Công Nghệ Sử Dụng

### **Frontend**
- ✅ **Angular / TypeScript** - Xây dựng giao diện người dùng.
- ✅ **HTML, CSS, Tailwind CSS** - Thiết kế giao diện hiện đại, tối ưu hiển thị.

### **Backend**
- ✅ **Spring Boot** - Xây dựng hệ thống microservices.
- ✅ **API Gateway** - Điều phối request giữa frontend và backend.
- ✅ **Keycloak** - Hệ thống xác thực và phân quyền người dùng.
- ✅ **Resilience4J** - Đảm bảo hệ thống chịu lỗi tốt.
- ✅ **Apache Kafka** - Hỗ trợ giao tiếp bất đồng bộ giữa các service.

### **Cơ Sở Dữ Liệu**
- ✅ **MySQL** - Lưu trữ dữ liệu của Order Service, Inventory Service.
- ✅ **MongoDB** - Lưu trữ dữ liệu của Product Service.

### **Giám Sát & Kiểm Tra**
- ✅ **Prometheus, Grafana, Loki, Tempo** - Thu thập logs, giám sát hiệu suất hệ thống.
- ✅ **OpenTelemetry** - Giám sát hiệu năng ứng dụng.

---

## ⚙️ Kiến Trúc Hệ Thống

Hệ thống bao gồm các **microservices** chính:

1️⃣ **API Gateway**  
   📌 Điều phối request từ frontend đến backend.

2️⃣ **Authen Server (Keycloak)**  
   🔒 Xác thực và quản lý quyền truy cập người dùng.

3️⃣ **Product Service**  
   📦 Quản lý thông tin sản phẩm, sử dụng **MongoDB**.

4️⃣ **Order Service**  
   🛒 Xử lý đơn hàng, lưu trữ dữ liệu trong **MySQL**.

5️⃣ **Inventory Service**  
   📊 Kiểm tra số lượng tồn kho của sản phẩm.

6️⃣ **Notification Service**  
   📩 Gửi email thông báo khi có đơn hàng mới, sử dụng **Kafka**.

---

## 🔄 Luồng Hoạt Động Chính

1️⃣ Người dùng truy cập **Frontend** để đặt hàng.  
2️⃣ **API Gateway** nhận request và chuyển đến service phù hợp.  
3️⃣ Khi đặt hàng:  
   - **Order Service** kiểm tra kho hàng thông qua **Inventory Service**.  
   - Nếu có hàng, đơn hàng được lưu vào **MySQL**.  
   - **Kafka** gửi sự kiện đến **Notification Service** để gửi email xác nhận.  
4️⃣ Hệ thống sử dụng **Resilience4J** để đảm bảo hoạt động ổn định.  

---

## 🏗 Cách Chạy Dự Án

### **1️⃣ Clone repository**
```bash
git clone https://github.com/your-repo-name.git
cd your-repo-name
