*** Settings ***
Library  JSONLibrary
Library  os
Library  Collections

*** Test Cases ***
Testcase1:
    ${json_obj}=     load json from file  /home/gaurang/PycharmProjects/APIAutomation/jsondata.json
    ${name_value}=  get value from json  ${json_obj}    $.firstName

    #log to console  ${name_value[0]}
    should be equal  ${name_value[0]}   John

    ${street_value}=  get value from json  ${json_obj}    $.address.streetAddress
    should be equal  ${street_value[0]}   21 2nd Street

    ${faxnum_value}=  get value from json  ${json_obj}    $.phoneNumber[1].number
    should be equal  ${faxnum_value[0]}   646 555-4567