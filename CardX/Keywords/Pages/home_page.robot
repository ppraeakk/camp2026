*** Settings ***
Resource    ${CURDIR}/../common.robot

*** Keywords ***
Click accept cookie
    common.Cookie acception    ${home_locator.btn_cookie_accept}

Click loan cal button
    common.Click element when ready    ${home_locator.btn_loan}