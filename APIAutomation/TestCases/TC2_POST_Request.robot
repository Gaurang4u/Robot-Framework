*** Settings ***
Library  RequestsLibrary
Library  Collections
*** Variables ***
${baseurl}  https://jsonplaceholder.typicode.com


*** Test Cases ***
PutInfo
    Create Session  mysession   ${baseurl}
    ${body}=    create dictionary  title=foo    body=bar    userId=1
    ${header}=  create dictionary  Content-Type=application/json; charset=UTF-8
    ${response}=    post request  mysession     /posts   data=${body}    headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}


#VALIDATIONS

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  201

    ${res_body}=    convert to string    ${response.content}
    should contain  ${res_body}     title": "foo"
    should contain  ${res_body}     "body": "bar"

