## Taxi servise

This project implements a taxi service with login and registration.
Using n-tier 3-layer architecture, also TomCat web server version 8.5.69.
the application has such features as:
1. **add and remove:**
    * drivers
    * cars
    * manufacturer
  
2. **display information:**
    * drivers
    * cars
    * manufacturers
3. **register the driver on the website and login**

## Project structure

Architecture consists of 3 layers

* **DAO** (work with the database)
* **SERVICES** (routing logic)
* **CONTROLLER** (control interface)

## Technology 

* Apache Tomcat - version 8.5.69
* MySQL
* JDBC
* Servlet 
* JSTL 
* JSP

## What you need to do to start the project
1. TomCat
    * add TomCat config
    
2. MySQL 
    * in MySQL add code from _resource/init_db.sql file_ to create all boring table
    * In _/util/ConnectionUtil.java_, change the **URL**, **MYSQL_DRIVER**, **USERNAME** and **PASSWORD** properties to those
      which you specified when installing MySQL, or you can use the ones that are already there
    
* After starting tomcat, go to _http://localhost: your port that you specified when configuring tomcat_,
      click "Register",
      to add a new driver.