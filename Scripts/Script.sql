INSERT INTO RecordKeeping.employee
(name, `type`, dob, joinDate, salary, mobileNumber, address)
VALUES('Pravin K', 'admin', '1995-01-08', '2000-01-08', 100000, '9841869591', '131/19, x street, y city, 600015');

SELECT id, name, `type`, dob, joinDate, salary, mobileNumber, address
FROM RecordKeeping.employee;
select count(*) from employee;
SELECT * FROM employee WHERE id=;