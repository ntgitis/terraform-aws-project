# ☁️ AWS Cloud Infrastructure Automation Project

Dự án này là một hệ thống hạ tầng toàn diện trên nền tảng AWS, được xây dựng bằng phương pháp quản lý cơ sở hạ tầng IaC sử dụng Terraform. Dự án được xây dựng, phát triển và tối ưu nhằm mô phỏng quy trình xây dựng hệ thống thực tế của doanh nghiệp.

## 🛠 Công nghệ cốt lõi

- **Nền tảng đám mây:** Amazon Web Services (AWS) - Region: `us-east-1`
- **Tự động hóa hạ tầng:** Terraform
- **Bảo mật & Quản lý:** AWS IAM, AWS CLI, S3 Backend
- **Quản lý mã nguồn:** Git & GitHub

---

## 🗺️ Lộ trình dự án (Project Roadmap)

- [x] **Tuần 1 - Task 1:** Thiết lập hạ tầng cơ sở (VPC, S3), Quản lý định danh (IAM) và Bảo mật State.
- [ ] **Tuần 2 - Task 2:** _(Đang chờ cập nhật...)_
- [ ] **Tuần 3 - Task 3:** _(Đang chờ cập nhật...)_

---

## 📍 Nhật ký triển khai (Task Execution)

### Task 1: Khởi tạo hạ tầng AWS cơ bản & Quản lý State an toàn

**1. Quản lý Định danh & Phân quyền an toàn (IAM)**

- **Cấp phát IAM Users:** Tạo và cấp quyền cho IAM User (`terraform-admin`) để thực thi các lệnh IaC.

- **Bảo mật Access Key:** Thiết lập xác thực thông qua AWS CLI

**2. Triển khai Hạ tầng Mạng và Lưu trữ**

- Viết mã Terraform khởi tạo 2 resource đầu tiên:
  - **AWS VPC:** Mạng riêng ảo với có địa chỉ IP `10.0.0.0/16`
  - **AWS S3 Bucket:** Kho lưu trữ S3 có tên là `terraform-s3-nam-08102026
`

**3. Quản lý Trạng thái Hệ thống (State Management)**

- Thiết lập **S3 Backend**.
- File dữ liệu trạng thái (`terraform.tfstate`) được chuyển từ máy cá nhân lên không gian lưu trữ mã hóa của S3 Bucket để quản lý, đảm bảo tính nhất quán khi mở rộng dự án.

**4. Quản lý Mã nguồn (Version Control)**

- Thiết lập ` .gitignore` chặn việc rò rỉ các file trạng thái (`.tfstate`) và thư mục plugin (`.terraform/`) lên Github.
- Đóng gói và đẩy thành công các tệp cấu trúc an toàn lên repository công khai.
