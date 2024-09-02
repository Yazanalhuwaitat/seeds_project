akhtaboot = Company.find_or_create_by(name: "Akhtaboot")
zenhr = Company.find_or_create_by(name: "ZenHR")

amman_branch = zenhr.branches.find_or_create_by(branch_name: "Amman Branch")
dubai_branch = zenhr.branches.find_or_create_by(branch_name: "Dubai Branch")

employee_1_amman = amman_branch.employees.find_or_create_by(emp_name: "Employee 1 Amman", email: "employee1.amman@example.com", hire_date: "2023-01-01", employment_number: "EMP001")
employee_2_amman = amman_branch.employees.find_or_create_by(emp_name: "Employee 2 Amman", email: "employee2.amman@example.com", hire_date: "2023-01-01", employment_number: "EMP002")
employee_terminated_amman = amman_branch.employees.find_or_create_by(emp_name: "Employee Terminated Amman", email: "terminated1.amman@example.com", hire_date: "2023-01-01", employment_number: "EMP003")

Termination.find_or_create_by(employee: employee_terminated_amman, term_date: "2024-12-31")

employee_1_dubai = dubai_branch.employees.find_or_create_by(emp_name: "Employee 1 Dubai", email: "employee1.dubai@example.com", hire_date: "2023-01-01", employment_number: "EMP001")
employee_2_dubai = dubai_branch.employees.find_or_create_by(emp_name: "Employee 2 Dubai", email: "employee2.dubai@example.com", hire_date: "2023-01-01", employment_number: "EMP002")
employee_3_dubai = dubai_branch.employees.find_or_create_by(emp_name: "Employee 3 Dubai", email: "employee3.dubai@example.com", hire_date: "2023-01-01", employment_number: "EMP003")

employee_1_amman.financial_packages.find_or_create_by(from_date: "2023-01-01", to_date: "2023-12-31", amount: 500)
employee_1_amman.financial_packages.find_or_create_by(from_date: "2024-01-01", to_date: "2024-12-31", amount: 600)

employee_2_amman.financial_packages.find_or_create_by(from_date: "2023-01-01", to_date: "2023-12-31", amount: 500)
employee_2_amman.financial_packages.find_or_create_by(from_date: "2024-01-01", to_date: "2024-12-31", amount: 600)

room_1_amman = amman_branch.rooms.find_or_create_by(room_name: "Amman Meeting Room 1")
room_2_amman = amman_branch.rooms.find_or_create_by(room_name: "Amman Meeting Room 2")

employee_1_amman.rooms << room_1_amman
employee_2_amman.rooms << [room_1_amman, room_2_amman]
