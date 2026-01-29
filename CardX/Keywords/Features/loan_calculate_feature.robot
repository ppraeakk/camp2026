*** Settings ***
Resource    ${CURDIR}/../common.robot

*** Keywords ***
Fill loan calculation data
    [Arguments]    ${IncomeData}    ${CreditData}
    loan_cal_page.Select career
    loan_cal_page.Select result type
    loan_cal_page.Select loan type
    loan_cal_page.Input MonthlyIncome    ${IncomeData}
    loan_cal_page.Input CreditLimit    ${CreditData}