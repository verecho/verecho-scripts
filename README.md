# verecho-scripts
Random scripts

---

### generate_employee_import.rb

  A script to generate fake employee data using the faker gem.
  Make sure to install Faker `gem install faker` before running.

  Sample Usage: `ruby generate_employee_import.rb "acme.com" 100`
  (creates 100 users with the acme.com email domain)


### generate_emergency_contacts.rb

  A script to generate some fake emergency contacts for employees using faker.
  Sample Usage: `ruby generate_emergency_contacts.rb`  hardcoded for ids right now.
  Outputs SQL to run in the mysql console.


### parse_testflight_mbox.rb

  A script to parse a Google mbox export of testflight emails into a csv file with the to
  email as well as the testflight invite link. (requires mbox and CSV gem)

---
