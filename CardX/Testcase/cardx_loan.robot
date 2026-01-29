*** Settings ***
Resource    ${CURDIR}/../Keywords/Import.robot
Variables    ${CURDIR}/../Resource/testdata/uat/cardx_loan_data.yaml
Test Setup    common.Open CardX website
Test Teardown    Run keyword if test failed    common.Default test teardown
Documentation    loan calaulation
Library    String

*** Test Cases ***
Verify red text notification
    [Documentation]    loan calaulation
    home_page.Click accept cookie
    home_page.Click loan cal button
    loan_calculate_feature.Fill loan calculation data    ${TC001.MonthlyIncome}    ${TC001.CreditLimit}
    loan_cal_page.Verify red massage display