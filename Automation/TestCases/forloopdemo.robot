*** Test Cases ***
#Forloop1
#    FOR    ${i}    IN RANGE    1    10
#        LOG TO CONSOLE    ${i}
#    END

#Forloop2
#    FOR     ${i}    IN  1  2 3  4 5  6 7  8
#        LOG TO CONSOLE  ${i}
#    END

#Forloop3withlist
#    @{items}    create list     1   2   3   4   5
#    FOR    ${i}    IN   @{items}
#        LOG TO CONSOLE    ${i}
#    END

#Forloop4
#     FOR    ${i}    IN  john    david   smith
#        LOG TO CONSOLE    ${i}
#     END

#Forloop5withlist
#    @{items}    create list     john david smith wills
#    FOR    ${i}    IN   @{items}
#        LOG TO CONSOLE    ${i}
#    END

Forloop5withlist
    @{items}    create list     1   2   3   4   5
    FOR    ${i}    IN   @{items}
        LOG TO CONSOLE    ${i}
        EXIT FOR LOOP IF    ${i}==3
    END
