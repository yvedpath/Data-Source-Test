# Data-Source-Test

This project can be used to "Test" a datasource created in JBoss. The Datasource name should be "java:/jboss/PGDS".  This datasource is poining to 
Database schema named "emp". This schema containts a table called "employee" which has three columns. id,name,sbr. 

Project can be build using "mvn package". Resulting war can be deployed in JBoss. If JBoss has the datasource created pointing to Database described 
above, When hit from the browser, browser should display all rows of the table. URL can be localhost:8080/Data-Source-Test/index.jsp
