# News Portal Website
A dynamic news portal built with Laravel, MySQL,CSS,Javascript and Bootstrap, featuring multi-category news, admin management, and user engagement.

---

## 🔹 Features
- Multi-category news management (Bangla & English)  
- News details page with images and media  
- User authentication and profile management  
- **Role-Based Access Control (RBAC)**  
  - Admin: Full control (manage news, users, roles, permissions)  
  - Editor: Can create/edit/publish news  
  - User: Can comment and view news  
- Admin panel for uploading, editing, and publishing news  
- Commenting system for user engagement  
- Advertisement management  
- Draft and publish news later functionality  

---

## 🔹 Screenshots
Since the project is not live, use screenshots from your local environment :

![Home Page](screenshots/homepage.png)  
![Category Page](screenshots/categorypage.png)  
![News Details](screenshots/newsdetails.png)  
![Admin Panel](paperAdmin/public/dmin anel_ews_ortal.png)

---

## 🔹 Tech Stack
- **Backend:** PHP, Laravel  
- **Frontend:** HTML, CSS, Bootstrap, JavaScript  
- **Database:** MySQL  
- **Others:** Composer, Git, REST API

---

## 🔹 Installation Steps (Local Use)
```bash
# Clone the repository
git clone https://github.com/omerlatifi/Newsportal-Management-System.git

# Move into the project directory
cd News-Portal

# Install PHP dependencies
composer install

# Install Node.js dependencies and compile assets
npm install
npm run dev

# Copy environment file
cp .env.example .env

# Generate Laravel app key
php artisan key:generate

# Run migrations
php artisan migrate

# Serve the project locally
php artisan serve
```
---
## 🔹Demo
- **Local preview only:** Open http://127.0.0.1:8000 after running php artisan serve.
---
## 🔹Author
- **Name:** Omer Latifi
- **GitHub:** https://github.com/omerlatifi
- **Portfolio:** https://yourportfolio.com
---
