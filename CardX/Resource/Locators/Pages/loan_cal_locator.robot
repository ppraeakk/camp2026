*** Variables ***

&{loan_cal_locator}    ddl_ChooseCareer=//span[@data-testid="choose_carreer"]
...                    opt_fullTimeStaff=//li[@data-value="fullTimeStaff"]
...                    ddl_result=//div[@id="loancalculatorpage_duration"]//div[@role="button"]
...                    opt_monthlyinstallment=//li[@data-value="type2"]
...                    ddl_loan_type=//div[@role='button' and .//span[contains(text(),'กรุณาเลือกประเภทสินเชื่อที่คุณสนใจ')]]
...                    opt_Speedyloan=//li[@data-value="speedy-loan"]
...                    txt_monthlyincome=//p[text()='ผลการคำนวณ']/following::input[@type='number'][1]
...                    txt_creditlimit=//p[text()='ผลการคำนวณ']/following::input[@type='number'][2]
# ...                    txt_redmassage=//span[contains(text(),'วงเงินทั้งหมดจะต้องไม่เกิน 3 เท่าของรายได้ต่อเดือนและไม่เกิน 37,000 บาท')]
...                    txt_redmassage=//span[@class="MuiTypography-root MuiTypography-ButtonText css-10frzxy"]