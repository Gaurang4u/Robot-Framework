*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${baseurl}  http://localhost:8080

*** Test Cases ***
TC1:Returns all the video games(GET)
    create session  mysession   ${baseurl}
    ${response}=    get request  mysession  /app/videogames

    log to console  ${response.status_code}
    log to console  ${response.content}

    #validations

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  200

TC2:Add a new video game(POST)
    create session  mysession   ${baseurl}
    ${body}=    create dictionary  id=100   name=spiderman  releaseDate=2025-11-25T05:24:51.667Z    reviewScore=4   category=adventure  rating=high
    ${header}=  create dictionary  Content-Type=application/json
    ${response}=    post request  mysession  /app/videogames     data=${body}    headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    #Validations

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  200

    ${res_body}=    convert to string    ${response.content}
    should contain  ${res_body}     Record Added Successfully

TC3:Returns detail of single game by ID(GET)
    create session  mysession   ${baseurl}
    ${response}=    get request  mysession  /app/videogames/100

    log to console  ${response.status_code}
    log to console  ${response.content}

    #validations

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  200

    ${body}=    convert to string    ${response.content}
    should contain  ${body}     spiderman

TC4:Update an existing video game by specifing a new body(PUT)
    create session  mysession   ${baseurl}
    ${body}=    create dictionary  id=100   name=batman  releaseDate=2025-11-25T05:24:51.667Z    reviewScore=4   category=adventure  rating=high
    ${header}=  create dictionary  Content-Type=application/json
    ${response}=    put request  mysession  /app/videogames/100     data=${body}    headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    #Validations

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  200

    ${res_body}=    convert to string    ${response.content}
    should contain  ${res_body}     batman

TC5:Deletes a video game by ID(DELETE)
    create session  mysession   ${baseurl}
    ${response}=    delete request  mysession  /app/videogames/100

    log to console  ${response.status_code}
    log to console  ${response.content}

    #Validations

    ${status_code}=     convert to string   ${response.status_code}
    should be equal     ${status_code}  200

    ${res_body}=    convert to string    ${response.content}
    should contain  ${res_body}     Record Deleted Successfully
