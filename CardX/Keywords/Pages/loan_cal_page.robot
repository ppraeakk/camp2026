*** Settings ***
Resource    ${CURDIR}/../common.robot

*** Keywords ***
Select career
    common.Click element when ready    ${loan_cal_locator.ddl_ChooseCareer}
    common.Click element when ready    ${loan_cal_locator.opt_fullTimeStaff}

Select result type
    common.Click element when ready    ${loan_cal_locator.ddl_result}
    common.Click element when ready    ${loan_cal_locator.opt_monthlyinstallment}

Select loan type
    common.Click element when ready    ${loan_cal_locator.ddl_loan_type}
    common.Click element when ready    ${loan_cal_locator.opt_Speedyloan}

Input monthly income
    [Arguments]    ${IncomeData}
    common.Clear textbox    ${loan_cal_locator.txt_monthlyincome}
    common.Input element when ready    ${loan_cal_locator.txt_monthlyincome}    ${IncomeData}

Input credit limit
    [Arguments]    ${CreditData}
    common.Clear textbox    ${loan_cal_locator.txt_creditlimit}
    common.Input element when ready    ${loan_cal_locator.txt_creditlimit}    ${CreditData}

Verify red massage display
    common.Verify redtext message    ${loan_cal_locator.txt_redmassage}