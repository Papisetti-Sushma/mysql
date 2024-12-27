CREATE DATABASE Banking;
USE Banking;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT, 
    FullName VARCHAR(100) NOT NULL,          
    Email VARCHAR(100),                        
    PhoneNumber VARCHAR(15),                   
    AccountNumber VARCHAR(20) UNIQUE NOT NULL, 
    AccountType VARCHAR(50) NOT NULL,          
    Balance DECIMAL(15, 2) NOT NULL,           
    DateOfBirth DATE,                        
    Address VARCHAR(255)
);
INSERT INTO Customers 
    (FullName, Email, PhoneNumber, AccountNumber, AccountType, Balance, DateOfBirth, Address)
VALUES
    ('Arjun Kumar', null, '9876543210', 'ACC10001', 'Savings', 12500.50, '1985-05-15', 'MG Road, Bangalore'),
    ('Priya Sharma', 'priyasharma@gmail.com', '9876543211', 'ACC10002', 'Current', 7500.00, null, 'JP Nagar, Mumbai'),
    ('Ravi Verma', 'raviverma@gmail.com', '9876543212', 'ACC10003', 'Savings', 5000.00, '1978-09-12', 'Vasant Kunj, Delhi'),
    ('Deepa Nair', null, '9876543213', 'ACC10004', 'Loan', 15000.00, '1995-11-25', 'Technopark, Trivandrum'),
    ('Manoj Reddy', 'manojreddy@gmail.com', '9876543214', 'ACC10005', 'Fixed Deposit', 30000.00, '1982-02-14', 'Jubilee Hills, Hyderabad'),
    ('Anjali Gupta', 'anjaligupta@gmail.com', null, 'ACC10006', 'Savings', 15000.00, '1997-08-30', 'Civil Lines, Jaipur'),
    ('Vikram Singh', 'vikramsingh@gmail.com', '9876543216', 'ACC10007', 'Current', 2500.00, '1988-07-19', 'Sector 18, Noida'),
    ('Neha Joshi', null, null, 'ACC10008', 'Loan', 18000.00, '1986-10-04', 'Koregaon Park, Pune'),
    ('Rajesh Iyer', 'rajeshiyer@gmail.com', null, 'ACC10009', 'Savings', 4000.00, '1979-12-08', 'Anna Nagar, Chennai'),
    ('Pooja Desai', 'poojadesai@gmail.com', '9876543219', 'ACC10010', 'Fixed Deposit', 100000.00, null, 'Surat'),
    ('Sanjay Kulkarni', 'sanjaykulkarni@gmail.com', '9876543220', 'ACC10011', 'Current', 8200.00, '1993-01-05', 'Camp Road, Pune'),
    ('Kavya Menon', 'kavyamenon@gmail.com', '9876543221', 'ACC10012', 'Savings', 6200.00, '1984-06-13', 'Fort Road, Kochi'),
    ('Rohan Mehta', 'rohanmehta@gmail.com', null, 'ACC10013', 'Loan', 12000.00, '1999-05-21', 'Marine Drive, Mumbai'),
    ('Ishita Patel', 'ishitapatel@gmail.com', '9876543223', 'ACC10014', 'Savings', 30000.00, '1983-09-09', 'Paldi, Ahmedabad'),
    ('Amit Tiwari', 'amittiwari@gmail.com', '9876543224', 'ACC10015', 'Current', 6500.00, '1987-11-01', 'Banjara Hills, Hyderabad'),
    ('Sneha Ghosh', 'snehaghosh@gmail.com', '9876543225', 'ACC10016', 'Fixed Deposit', 45000.00, '1980-08-22', 'Park Street, Kolkata'),
    ('Rakesh Jain', 'rakeshjain@gmail.com', null, 'ACC10017', 'Savings', 800.00, '1998-07-03', 'Mansarovar, Jaipur'),
    ('Meera Rao', 'meerarao@gmail.com', '9876543227', 'ACC10018', 'Loan', 22000.00, '1981-03-16', 'Panaji, Goa'),
    ('Harshita Agarwal', 'harshitaagarwal@gmail.com', '9876543228', 'ACC10019', 'Savings', 1800.00, '1996-12-29', 'Lalbagh, Lucknow'),
    ('Nitin Malhotra', 'nitinmalhotra@gmail.com', NULL, 'ACC10020', 'Current', 7200.00, '1994-10-10', 'Sector 21, Chandigarh');

# COMPARISION OPERATION
SELECT * FROM Customers WHERE Balance > 20000;  # Customers with Balance Greater Than 20,000
SELECT * FROM Customers WHERE AccountType = 'Savings' AND Balance < 5000; # Customers with Savings Accounts and Balance Less Than 5,000

# LOGICAL
SELECT * FROM Customers WHERE Balance > 10000 AND AccountType = 'Savings';
SELECT * FROM Customers WHERE Balance > 10000 OR AccountType = 'Savings';
SELECT * FROM Customers WHERE NOT AccountType = 'LOAN';

# CONCATENATION
SELECT CONCAT(FullName, ' ', Email) AS ContactInfo FROM Customers;
SELECT * FROM Customers 
WHERE Address LIKE '%Mumbai%' OR AccountType = 'Current';


# LIKE
SELECT * FROM Customers WHERE Address LIKE '%bad';
SELECT * FROM Customers WHERE Email LIKE '%@gmail.com';
SELECT * FROM Customers WHERE AccountType LIKE 'L%';

# IN
SELECT * FROM Customers WHERE AccountType IN ('Savings', 'Loan', 'Fixed Deposit');

#NULL/IS NULL
SELECT * FROM Customers WHERE PhoneNumber IS NOT NULL;
SELECT * FROM Customers WHERE Email IS NULL;

# BETWEEN
SELECT * FROM Customers WHERE Balance BETWEEN 5000 AND 20000;
SELECT * FROM Customers WHERE DateOfBirth BETWEEN '1980-01-01' AND '1990-12-31';
SELECT * FROM Customers WHERE Balance NOT BETWEEN 5000 AND 20000;


