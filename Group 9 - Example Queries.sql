# Single table queries (3)
#
# Selects first and last names, phone numbers, and email addresses from the customer table.
SELECT firstName, lastName, phone, email FROM customer;

# Fetches harvest IDs, the number of barrels, and labor hours from the harvest table.
SELECT harvestID, numberOfBarrels, laborHours FROM harvest;

# Retrieves first and last names, and skill sets from the employee table.
SELECT empFirstName, empLastName, empSkillset FROM employee;


# Multi table (6)
#
# This query uses a LEFT JOIN to combine the customer table with the sales table. It includes all customers, even those who have
# not made any purchases. The result includes each customer's ID, first name, last name, email, the count of their total purchase
# transactions (as total_purchases), and the sum of the amount spent (as total_amount_spent).
SELECT c.custID, c.firstName, c.lastName, c.email, COUNT(s.salesID) AS total_purchases, concat('$', format(SUM(s.amount), 2)) AS total_amount_spent
FROM customer c
LEFT JOIN sales s ON c.custID = s.Customer_custID
GROUP BY c.custID, c.firstName, c.lastName, c.email;

# This query uses an inner JOIN, linking the customer table directly with the sales table. This means only customers who have made
# at least one purchase will be included in the results. Similar to the first query, it lists the customer's ID, first name, last name,
# email, the total number of sales transactions, and the total amount spent.
SELECT c.custID, c.firstName, c.lastName, c.email, COUNT(s.salesID) AS total_purchases, concat('$', format(SUM(s.amount), 2)) AS total_amount_spent
FROM customer c
JOIN sales s ON c.custID = s.Customer_custID
GROUP BY c.custID, c.firstName, c.lastName, c.email;

# Calculates the number of barrels and labor hours for each harvest, and associates these with the employee details involved.
SELECT h.harvestID, h.numberOfBarrels, h.laborHours, e.empFirstName, e.empLastName
FROM harvest h
JOIN harvest_has_employees he ON h.harvestID = he.Harvest_harvestID
JOIN employee e ON he.Employee_empID = e.empID;

# Determines the average number of barrels harvested by each employee, grouped by their ID and name.
SELECT e.empID, e.empFirstName, e.empLastName, AVG(h.numberOfBarrels) AS avg_barrels_harvested
FROM employee e
JOIN harvest_has_employees he ON e.empID = he.Employee_empID
JOIN harvest h ON he.Harvest_harvestID = h.harvestID
GROUP BY e.empID, e.empFirstName, e.empLastName;

# Lists the top five customers based on the total amount spent, sorted in descending order.
SELECT c.custID, c.firstName, c.lastName, c.email, concat('$', format(SUM(s.amount), 2)) AS total_amount_spent
FROM customer c
JOIN sales s ON c.custID = s.Customer_custID
GROUP BY c.custID, c.firstName, c.lastName, c.email
ORDER BY total_amount_spent DESC
LIMIT 5;

# Summarizes total labor hours and the number of barrels for each harvest, grouped by harvest ID.
SELECT h.harvestID, h.numberOfBarrels, SUM(h.laborHours) AS total_labor_hours
FROM harvest h
JOIN harvest_has_employees he ON h.harvestID = he.Harvest_harvestID
GROUP BY h.harvestID, h.numberOfBarrels;


# Summary queries (4)
#
# This query fetches a list of all customers and for each customer, it counts the number of distinct harvests associated with them
# and sums up the total yield (in terms of the number of barrels).
SELECT c.custID, c.firstName, c.lastName, COUNT(DISTINCT h.harvestID) AS total_harvests, SUM(h.numberOfBarrels) AS total_yield
FROM customer c
LEFT JOIN sales s ON c.custID = s.Customer_custID
LEFT JOIN harvest h ON s.salesID = h.Sales_salesID
GROUP BY c.custID, c.firstName, c.lastName;

# Gets us the sum of the total labor hours logged by each employee across all harvests they have worked on.
SELECT e.empID, e.empFirstName, e.empLastName, SUM(h.laborHours) AS total_labor_hours
FROM employee e
JOIN harvest_has_employees hh ON e.empID = hh.Employee_empID
JOIN harvest h ON hh.Harvest_harvestID = h.harvestID
GROUP BY e.empID, e.empFirstName, e.empLastName;

# This query groups employees by their skill set, then for each group, it calculates the total number of barrels harvested.
# Additionally, it concatenates each employee's name within their respective skillset group.
SELECT e.empSkillset AS 'Employee Skill Set', concat(e.empFirstName, ' ',e.empLastName) 'Employee Name', SUM(h.numberOfBarrels) AS total_barrels_harvested
FROM employee e
JOIN harvest_has_employees hh ON e.empID = hh.Employee_empID
JOIN harvest h ON hh.Harvest_harvestID = h.harvestID
GROUP BY e.empSkillset, concat(e.empFirstName, ' ',e.empLastName);

# This query gets us a quick summary of total sales transactions and the total monetary amount from all sales.
SELECT COUNT(salesID) AS total_sales, concat('$', format(SUM(amount), 2)) AS total_amount
FROM sales;


# Subqueries (2)
#
# Gets us a list of the bogs and their associated pesticides using a subquery.
SELECT b.bogName, p.pesticideName AS pesticide_used
FROM (SELECT bogID, bogName FROM Bog) b
JOIN Bog_has_Pesticides bp ON b.bogID = bp.Bog_bogID
JOIN Pesticides p ON bp.Pesticides_pesticideID = p.pesticideID;

# This query gets us a list of our employees and their equipment details using a subquery.
SELECT e.empFirstName, e.empLastName, eq.equipName AS equipment_used
FROM (SELECT empID, empFirstName, empLastName FROM Employee) e
JOIN Emp_Has_Equipment ee ON e.empID = ee.Employee_empID
JOIN Equipment eq ON ee.Equipment_equipmentID = eq.equipmentID;


# Views
#
# This view creates a protected subset of the sales data. Views are useful when you have sensitive data that
# should only be seen by certain people.
CREATE VIEW SalesSummary AS
SELECT COUNT(salesID) AS total_sales, concat('$', format(SUM(amount), 2)) AS total_amount
FROM sales;

# Displaying the protected view.
SELECT * FROM SalesSummary;