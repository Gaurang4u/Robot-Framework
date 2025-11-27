*** Settings ***
Library  JSONLibrary
Library  os
Library  Collections
Library  RequestsLibrary

*** Variables ***
${base_url}     https://restcountries.com

*** Test Cases ***
Get_countryInfo
    create session  mysession   ${base_url}
    ${response}=    get request  mysession  /v3.1/alpha/IN

    ${json_obj}=    to json  ${response.content}

    #Single data validations
    ${country_name}=    get value from json  ${json_obj}    $[0].name
    log to console  ${country_name[0]}

    ${border_name}=    get value from json  ${json_obj}    $[0].borders[0]
    log to console  ${border_name[0]}
    should be equal  ${border_name[0]}  BGD

    #Multiple data validations
    ${border_name}=    get value from json  ${json_obj}    $[0].borders
    log to console  ${border_name[0]}
    should contain any  ${border_name[0]}  BGD  BTN PAK NPL MMR
    should not contain any  ${border_name[0]}  ABC
