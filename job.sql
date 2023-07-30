create database emploi

use emploi



 CREATE TABLE Company (
  id_company INT,
  company_name VARCHAR(500),
  PRIMARY KEY (id_company)
);

CREATE TABLE Job_Company (
  id_job INT,
  id_company INT,
  FOREIGN KEY (id_company) REFERENCES Company(id_company),
  FOREIGN KEY (id_job) REFERENCES Job(id_job)
);

CREATE TABLE Requirements (
  id_requirement INT,
  requirement_company VARCHAR(500),
  PRIMARY KEY (id_requirement)
);

CREATE TABLE Job (
  id_job INT,
  job_title VARCHAR(255),
  salary FLOAT,
  plus BIT,
  Asterisk BIT,
  level_exp VARCHAR(100) CHECK (level_exp IN ('Entry-level', 'Mid-level', 'Executive-level','Senior-level', 'Not specified'))
  PRIMARY KEY (id_job)
);

CREATE TABLE Job_Requirements (
  id_job INT,
  id_requirement INT,
  FOREIGN KEY (id_job) REFERENCES Job(id_job),
  FOREIGN KEY (id_requirement) REFERENCES Requirements(id_requirement)
);

CREATE TABLE Facilities (
  id_facilities INT,
  facilities VARCHAR(255),
  PRIMARY KEY (id_facilities)
);

CREATE TABLE Job_Facilities (
  id_job INT,
  id_facilities INT,
  FOREIGN KEY (id_job) REFERENCES Job(id_job),
  FOREIGN KEY (id_facilities) REFERENCES Facilities(id_facilities)
);

CREATE TABLE Requirements (
  id_country INT,
  country VARCHAR(255),
  PRIMARY KEY (id_country)
);


CREATE TABLE Job_Country (
  id_job INT,
  id_country INT,
  FOREIGN KEY (id_job) REFERENCES Job(id_job),
  FOREIGN KEY (id_country) REFERENCES Country(id_country)
);





select * from Company
select * from Requirements
select * from Job
select * from Job_Requirements
select * from Facilities
select * from Job_Facilities


select * from Job_Country
select * from Job_Company


