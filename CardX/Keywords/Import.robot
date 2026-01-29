*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    BuiltIn

Resource    ${CURDIR}/common.robot
Variables    ${CURDIR}/../Resource/Settings/uat/setting.yaml

#pages
Resource    ${CURDIR}/pages/home_page.robot
Resource    ${CURDIR}/pages/loan_cal_page.robot

#locator
Resource    ${CURDIR}/../Resource/locators/pages/home_locator.robot
Resource    ${CURDIR}/../Resource/locators/pages/loan_cal_locator.robot

#features
Resource    ${CURDIR}/../Keywords/features/loan_calculate_feature.robot