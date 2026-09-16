CREATE TABLE client (
  id integer AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  contact_num VARCHAR(11) UNIQUE NOT NULL,
  created_at timestamp
);

CREATE TABLE instrument (
  id integer AUTO_INCREMENT PRIMARY KEY,
  client_id integer,
  type VARCHAR(50) NOT NULL,
  brand_model VARCHAR(100) NOT NULL,
  serial_number VARCHAR(50) UNIQUE NOT NULL,
  created_at timestamp,
  FOREIGN KEY (client_id) REFERENCES client (id)
);

CREATE TABLE technician (
  id integer AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  contact_num VARCHAR(11) UNIQUE NOT NULL,
  specialty VARCHAR(50) NOT NULL,
  created_at timestamp
);

CREATE TABLE service (
  id integer AUTO_INCREMENT PRIMARY KEY,
  service_type VARCHAR(50),
  instrument_type VARCHAR(50),
  estimated_hour NUMERIC(4,2) DEFAULT 0,
  created_at timestamp
);

CREATE TABLE repair (
  id integer AUTO_INCREMENT PRIMARY KEY,
  instrument_id integer,
  technician_id integer,
  service_id integer,
  status VARCHAR(20) DEFAULT 'checked-in',
  issue TEXT,
  cost NUMERIC(8,2) DEFAULT 0,
  date_received DATE,
  date_finished DATE,
  created_at timestamp,
  FOREIGN KEY (instrument_id) REFERENCES instrument (id),
  FOREIGN KEY (technician_id) REFERENCES technician (id),
  FOREIGN KEY (service_id) REFERENCES service (id)
);
