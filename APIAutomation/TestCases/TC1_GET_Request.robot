*** Settings ***
Library  RequestsLibrary
Library  Collections
*** Variables ***
${baseurl}  https://jsonplaceholder.typicode.com
${postnum}  1

*** Test Cases ***
GetInfo
    Create Session  mysession   ${baseurl}
    ${response}=    get request  mysession  /posts/${postnum}

#    log to console  ${response.status_code}
#    log to console  ${response.content}
#    log to console  ${response.headers}

#VALIDATIONS

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  200

    ${body}=    convert to string    ${response.content}
    should contain  ${body}     1

    ${contentTypeValue}=    get from dictionary  ${response.headers}     Content-Type
    should be equal  ${contentTypeValue}    application/json; charset=utf-8
