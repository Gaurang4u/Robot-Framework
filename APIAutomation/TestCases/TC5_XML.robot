*** Settings ***
Library  XML
Library  os
Library  Collections

*** Test Cases ***
Testcase1
    ${xml_obj}=     parse xml  /home/gaurang/PycharmProjects/APIAutomation/employees.xml

    #Validations

    #Single element value
    ${emp_firstname}=   get element text  ${xml_obj}    .//Employee[1]/FirstName
    should be equal  ${emp_firstname}   Amitabh

    ${emp_firstname}=   get element  ${xml_obj}    .//Employee[1]/FirstName
    should be equal  ${emp_firstname.text}  Amitabh

    element text should be  ${xml_obj}  Amitabh     .//Employee[1]/FirstName

    #Check number of elements
    ${count}=   get element count  ${xml_obj}   .//Employee
    should be equal as integers  ${count}   5

    #Check attributes present
    element attribute should be  ${xml_obj}     id  E103    .//Employee[3]

    #Check value of child elements
    ${child_elements}=  get child elements  ${xml_obj}  .//Employee[1]
    should not be empty  ${child_elements}

    ${fname}=   get element text  ${child_elements[0]}
    ${lname}=   get element text  ${child_elements[1]}
    ${title}=   get element text  ${child_elements[2]}

    log to console  ${fname}
    log to console  ${lname}
    log to console  ${title}