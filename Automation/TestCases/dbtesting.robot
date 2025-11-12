*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}  ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   ####
${DBHost}   127.0.0.1
${DBPort}   3306


*** Test Cases ***
#Create person table
#    ${output}=  Execute SQL String  Create table person(id integer,first_name varchar(200),last_name varchar(20))
#    log to console  ${output}
#    Should Be Equal as strings  ${output}   None


#Inserting data in person table
#    #Single record
#    #${output}=  Execute SQL String  Insert into person values(101,"joe","smith")
#
#    #Multiple records
#    ${output}=  Execute SQL Script  ./TestData/mydb_person_insertdata.sql
#    log to console  ${output}
#    Should Be Equal as strings  ${output}   None

Check if exist in DB
    Check if exists in database  select id from mydb.person where first_name="David"

Check if not exist in DB
    Check if not exists in database     select id from mydb.person where first_name="Danny"

Check person table exist in DB
    Table must exist    person

Verify row count is zero
    Row count is 0  SELECT * from mydb.person WHERE first_name='xyz'

Verify row count is equal tp
    Row count is equal to x  SELECT * from mydb.person WHERE first_name='David'     1

Verify row count greater than
    Row count is greater than x  SELECT * from mydb.person WHERE last_name='Smith'     2

Verify row count less than
    Row count is less than x  SELECT * from mydb.person WHERE last_name='Smith'     5

Update record
    ${output}=  Execute SQL String  Update mydb.person set first_name="Jio" where id=104
    log to console  ${output}

Retrieve records from table
    @{queryresults}=  query  Select * from mydb.person
    log to console  ${queryresults}

Delete record from table
    ${output}=  Execute SQL String  Delete from mydb.person
    log to console  ${output}
