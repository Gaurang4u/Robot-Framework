*** Settings ***
Library  XML
Library  os
Library  RequestsLibrary
Library  Collections

*** Variables ***
${baseurl}  https://mocktarget.apigee.net

*** Test Cases ***
Testcase1
    create session  mysession   ${baseurl}
    ${response}=    get request  mysession  /xml
    ${xml_string}=  convert to string  ${response.content}
    ${xml_obj}=     parse xml  ${xml_string}

    #Check single element
    element text should be  ${xml_obj}   San Jose    .//city

    #Check multiple values
    ${child_elements}=  get child elements  ${xml_obj}
    should not be empty  ${child_elements}

    ${city}=  get element text  ${child_elements[0]}
    ${firstName}=  get element text  ${child_elements[1]}
    ${lastName}=  get element text  ${child_elements[2]}
    ${state}=  get element text  ${child_elements[3]}

    log to console  ${city}
    log to console  ${firstName}
    log to console  ${lastName}
    log to console  ${state}
