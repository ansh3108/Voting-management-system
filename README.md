# Voting Management System

A simple PHP + MySQL based Voting Management System built for local use with XAMPP.

## Getting Started

Follow the steps below to set up and run this project on your local machine.

---


## Prerequisites

 - Git
 - XAMPP
 - Code Editor, preferred- VsCode (Optional, but recommended)


---

###  1. Download and Extract

- Download the ZIP file of this repository.
- Extract it to a folder on your PC.

---

###  2. Move Project to XAMPP

- Copy the extracted project folder.
- Paste it into your XAMPP `htdocs` directory:

  ```
  C:/xampp/htdocs/
  ```

---

###  3. Start XAMPP Services

- Open the **XAMPP Control Panel**.
- Start the following services:
  - ✅ Apache
  - ✅ MySQL

---

###  4. Import the Database

1. In your browser, go to:

   ```
   http://localhost/phpmyadmin/
   ```

2. Click **New** in the left sidebar.
3. Enter the name:

   ```
   Voting_db
   ```

4. Click **Create**.
5. Go to the **Import** tab at the top.
6. Click **Browse** and locate the file:

   ```
   Voting_db.sql
   ```

   (found inside the `database` folder of the extracted project).

7. Click **Go** to import the database.

---

###  5. Run the Project

- Open a new browser tab and go to:

  ```
  http://localhost/Voting-Management-System
  ```

- Make sure the folder name in `htdocs` is exactly:

  ```
  Voting-Management-System
  ```

  If you renamed the folder, update the URL accordingly.

---

###  6. Login Details

Use the following credentials to log in:

```
Username: admin
Password: admin123
```

---

## Notes

- Ensure that Apache and MySQL are running in XAMPP before accessing the project.
- Do not change the database name or the SQL file name unless you update the code accordingly.

---



## Cast over local network

 - Get your local IPV4 Address
 - Go to Config of Apache server in xampp (Apache (httpd-xampp.conf))
 - Search for `phpmyadmin` 
 - Replace `denied` to `granted`
 - Restart apache server from xampp control panel

---

