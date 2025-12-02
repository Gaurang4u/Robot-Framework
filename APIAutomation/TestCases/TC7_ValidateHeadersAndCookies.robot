*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${baseurl}  https://jsonplaceholder.typicode.com

*** Test Cases ***
Testcase1
    create session  mysession   ${baseurl}
    ${response}=    get request  mysession  /photos


    log to console  ${response.headers}

    ${contentTypeValue}=    get from dictionary  ${response.headers}    Content-type
    should be equal  ${contentTypeValue}    application/json; charset=utf-8

    ${contentEncodingValue}=    get from dictionary  ${response.headers}    Content-Encoding
    should be equal  ${contentEncodingValue}    gzip