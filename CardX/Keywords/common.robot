*** Keywords ***
Open CardX website
    SeleniumLibrary.Open browser    ${url.CardX}    chrome

Cookie acception
    [Arguments]    ${locator}    ${timeouts}=${timeout.timeout}
    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeouts}
    SeleniumLibrary.Click element    ${locator}

Click element when ready
    [Arguments]    ${locator}    ${timeouts}=${timeout.timeout}
    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeouts}
    SeleniumLibrary.Click element    ${locator}

Clear textbox
    [Arguments]    ${locator}    ${timeouts}=${timeout.timeout}
    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeouts}
    SeleniumLibrary.Press keys    ${locator}    +    DELETE

Input element when ready
    [Arguments]    ${locator}    ${data_input}    ${timeouts}=${timeout.timeout}
    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeouts}
    SeleniumLibrary.Input text    ${locator}    ${data_input}

Verify redtext message
    [Arguments]    ${locator}    ${expected_text}=${text.redtext}    ${timeouts}=${timeout.timeout}
    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeouts}
    ${actual_text}=    SeleniumLibrary.Get text    ${locator}
    BuiltIn.Should be equal as strings    ${actual_text}    ${expected_text}

Default test teardown
    SeleniumLibrary.Capture page screenshot
    SeleniumLibrary.Close browser



