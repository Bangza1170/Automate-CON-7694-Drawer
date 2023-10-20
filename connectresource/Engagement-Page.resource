*** Settings ***
Library     PuppeteerLibrary
Library     String
Library     Collections
Library     BuiltIn


*** Variables ***
${BaseURL}                      https://beta.connect-x.tech
${Email}                        xpath=//input[@name='email']
${emailOrgAgent3}               agent3@conx.tech
${Password}                     xpath=//input[@name='password']
${PassOrgAgent3}                123456789
${ClickRemember}                xpath=//input[@type='checkbox']
${Buttonlogin}                  xpath=//button[@type='submit']
${Waitlogin}                    xpath=//div[text()='Home Dashboard']
${Goodboi}                      xpath=//*[text()='Good boiii']
${nametanung}                   xpath=(//*[text()='ทนงทวย คงควรคอย'])
${namenop}                      xpath=//*[@id="6476044069149141"]
${waitdate}                     xpath=(//*[text()='Noppadon Phurattisai'])[1]
${clickcreatelead}              xpath=//*[text()='Create Lead']
${waitleadNo}                   xpath=//label[text()='Lead ID']
${ButtonSave}                   xpath=//*[text()='Save']
${ButtonSaveLead}               xpath=(//*[text()='Save'])[3]/..
${ButtonSaveobject}             xpath=(//*[text()='Save']//..)[1]
${ButtonSaveTH}                 xpath=//*[text()='บันทึก']
${WaitSucces}                   xpath=//*[text()='Success']
${Cross}                        xpath=(//*[text()='Success']//..//..//..//*[local-name()="svg"])[2]//*
${ClickListview}                xpath=//*[@id="create-lead"]//*[text()='List View']
${WaitAllLead}                  xpath=//*[text()='All Lead']
${Clickidcreate-Lead}           xpath=(//*[@id="create-lead"]//*[contains(text(),'LD-')])[1]
${DrawerLeadCreate}             xpath=(//*[@id="create-lead"]//*[contains(text(),'LD-')])[1]/../../../..//*[local-name()="svg"]//*
${EditLead}                     xpath=(//*[@id="arrow"])/..//*[contains(text(),'แก้ไข')]/..
${EditMobile}                   xpath=(//span[text()='Mobile Phone'])//..//..//..//*/input
${EditPenLeedicon}              xpath=(//*[@id="create-lead"]//*[contains(text(),'LD-')])[1]//..//..//*//*[local-name()="svg"][2]
${NumberLeadicon}               xpath=(//*[@id="create-lead"]//*[contains(text(),'LD-')])[1]//..//..//*//*[local-name()="svg"][1]
${DetailLeadNo}                 xpath=(//*[@id="create-lead"]//*[local-name()="svg"])[1]
${ClickDuplicate}               xpath=//*[text()="ทำสำเนา"]/..
${ClickDelete}                  xpath=(//*[text()='ลบ']//..)[1]
${BannerDelete}                 xpath=(//*[text()='Do you really want to delete this lead?'])
${Clickconfirm}                 xpath=(//*[text()='ยืนยัน']//..)[1]
${ButtonLead}                   xpath=//*[@id="lead"]
${Wait}                         60s
${Owneragent}                   xpath=(//*[text()='Agent 03'])[2]
${WaitChat}                     xpath=(//*[text()='Noppadon Phurattisai'])[2]/../..
${AllLeadDrawer}                xpath=(//*[text()='All'])
${CloseDrawerLead}              xpath=(//*[text()='Close'])[3]
${ButtonClose}                  xpath=//*[text()='Close']
${LeadnoLd}                     xpath=((//*[@class="scrollable"])[2]//*[contains(text(),'LD-')])[1]
${ObjectTable}                  xpath=(//div[@role="table"]//*//*//*//*//*//*)[1]
${setFilter}                    xpath=((//*[text()='คำสั่งซื้อใหม่']/../../../..//*//*//*//*//*)[3]//..//..)[1]
${FilterManagement}             xpath=(//*[text()='การจัดการตัวกรอง']//..)[1]
${AllLeadFilter}                xpath=(//*[text()='All Lead'])[1]
${CreateFileter}                xpath=//*[text()='สร้างตัวกรอง']
${ConditionFilter}              xpath=//*[text()='เงื่อนไข']
${NameFilter}                   xpath=(//*[text()='ชื่อตัวกรอง'])[2]//..//..//..//input
${LeadIDFilter}                 xpath=//*[text()="Lead ID"]/..//input[@type='checkbox']
${LeadNoFilter}                 xpath=//*[text()="Lead No."]/..//input[@type='checkbox']
${CreatedByFilter}              xpath=//*[text()="Created By"]/..//input[@type='checkbox']
${CreatedDateFilter}            xpath=//*[text()="Created Date"]/..//input[@type='checkbox']
${LastModifiedFilter}           xpath=//*[text()="Last Modified"]/..//input[@type='checkbox']
${LastModifiedByFilter}         xpath=//*[text()="Last Modified By"]/..//input[@type='checkbox']
${ChannelFilter}                xpath=//*[text()="Channel"]/..//input[@type='checkbox']
${EmailFilter}                  xpath=//*[text()="Email"]/..//input[@type='checkbox']
${RemarkFilter}                 xpath=//*[text()="Remark"]/..//input[@type='checkbox']
${ButtonselectFilter}           xpath=//*[@class="scrollable"]//button[1]//*//*
${WaitLeadIDFilter}             xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Lead ID'])
${WaitLeadNoFilter}             xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Lead No.'])
${WaitCreatedByFilter}          xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Created By'])
${WaitCreatedDateFilter}        xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Created Date'])
${WaitLastModifiedFilter}       xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Last Modified'])
${WaitLastModifiedByFilter}     xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Last Modified By'])
${WaitChannelFilter}            xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Channel'])
${WaitEmailFilter}              xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Email'])
${WaitRemarkFilter}             xpath=(//*[text()='มองเห็นได้']/../../../..//*[text()='Remark'])
${ConfirmDelete}                xpath=//*[text()='Delete']
${3dotTestLead}                 xpath=(//*[text()='Lead Test']//..//..//..//button)[2]//*//*
${3dotAllLead}                  xpath=(//*[text()='All Lead'])[1]
${PinLeadTest}                  xpath=(//*[text()='Lead Test']/../../..//button)[1]
${PinAllLead}                   xpath=(//*[text()='All Lead']/../../..//button)[1]
${SortLeadNo}                   xpath=//*[text()='Lead No.']
${SortNo1LeadNo}                xpath=(//*[@role="rowgroup"]//*[contains(text(),'LD-')])[1]
${SortNo2LeadNo}                xpath=(//*[@role="rowgroup"]//*[contains(text(),'LD-')])[2]
${GropLeadno}                   xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])
${WaitSort}                     xpath=//*[contains(text(),'LD-')]
${Inputpagination}              xpath=//input[@id="input-page-number"]
${ButtonDropdownPagination}     xpath=((//*[text()='Go'])/../../..//*//*//*//*//*//..//..)[1]
${DropdownPagination50}         xpath=(//*[@id="aria-selection"]/../..//*[text()='50'])
${DropdownPagination100}        xpath=(//*[@id="aria-selection"]/../..//*[text()='100'])
${ButtonGo}                     xpath=//*[text()='Go']
${BackButtonPagination}         xpath=(//*[text()='Rows per page:']/../../../..//button)[2]
${NextButtonPagination}         xpath=(//*[text()='Rows per page:']/../../../..//button)[3]
${editobjectlayout}             xpath=//*[text()='1. Lead Info']//..//*//*//*
${IcongotoobjectLead}           xpath=(//*[@id="create-lead"]//*[contains(text(),'Lead')])[1]//..//..//*//*[local-name()="svg"][1]
${Waitsidebarlayout}            xpath=//*[text()='2. Create & Modified']
${Mouseremark}                  xpath=//*[text()='Remark']
${Waitobject}                   xpath=//*[text()='Language']
${EditObjectWorkphone}          xpath=(//*[text()='Work Phone'])[2]//..//*[local-name()="svg"]
${Waiteditobject}               xpath=//*[@name='label']
${ButtonRequired}               xpath=//*[text()='Required']//input
${EditLeadWorkphone}            xpath=//*[text()='Work Phone']/..//input
${BannerError}                  xpath=//*[text()='Error']
${LeadInfo}                     xpath=(//*[text()='ชื่อลีด']/../../..//*[contains(text(),'LD-')])[1]
${WorkPhoneobject}              xpath=(//*[text()='Work Phone'])[2]
${SocialIG}                     xpath=//*[text()='IG']
${ChannelIG}                    xpath=(//*[text()='conxbiz']/..)[1]
${WaitBoxIG}                    xpath=(//*[text()='Noppadon Phurattisai'])[1]/../..
${NoppadonBox}                  xpath=//*[@id="6626580260763098"]
${WaitNoppadonBox}              xpath=(//*[text()='Noppadon Phurattisai'])[2]
${DefalutText}                  xpath=//*[text()='Default Text']/../..//input
${ValueTestRadioButtons}        xpath=//*[text()='Test']/..//input
${ValueoneSelect}               xpath=//*[text()='Default Select']//..//*[local-name()="svg"]
${ValueFourSelect}              xpath=//*[text()='Four']
${ValueFewRaioButtons}          xpath=//*[text()='Few']/..//input
${ValueTheeSelect}              xpath=//*[text()='Thee']
${WaitchatNoppadon}             xpath=(//*[text()='..'])[3]/../../..
${WaitChatIG}                   xpath=//*[text()='.']
${DefalutSelect}                xpath=(//*[text()='Default Select'])[1]/..//*//*[local-name()="svg"]
${MobilePhone}                  xpath=(//*[text()='Mobile Phone'])[1]


*** Keywords ***
Open Browser and Login
    ${headless}=    Get Variable Value    ${HEADLESS}    ${False}
    ${options}=    Evaluate    {'args':['--start-maximized'], 'headless': ${headless}}
    Open Browser    ${BaseURL}/login    browser=pwchrome    options=${options}
    Input Text    ${Email}    ${emailOrgAgent3}
    Input Password    ${Password}    ${PassOrgAgent3}
    Select Checkbox    ${ClickRemember}
    Click Element    ${Buttonlogin}
    Wait Until Element Is Visible    ${Waitlogin}    ${Wait}

Go to Engagement in Facebook
    Go To    ${BaseURL}/engagement
    Wait Until Element Is Visible    ${Goodboi}    ${Wait}
    Click Element    ${Goodboi}
    Wait Until Element Is Visible    ${nametanung}    ${Wait}
    Click Element    ${namenop}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer Engagement Create Lead and Save
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer Engagement Create Lead
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Sleep    2s

Lead Number from page list view
    Click Element    ${ButtonLead}
    Wait Until Element Is Visible    ${Owneragent}    ${Wait}
    Click Element    ${AllLeadDrawer}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Click Element    ${Clickidcreate-Lead}
    Wait For New Window Open    ${Wait}
    Sleep    2s
    Switch Window    url=.*edit.*
    ${howto}=    Get Location
    Sleep    2s
    Switch Window    url=.*engagement
    ${Test01}=    Get Location
    Sleep    1s

List view Lead from page create Lead
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Sleep    1s
    Click Element    ${ClickListview}
    Wait Until Element Is Visible    ${WaitAllLead}    ${Wait}
    Sleep    2s

Drawer Listview Edit from page Create Engagement Lead
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${ClickListview}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Click Element    ${DrawerLeadCreate}
    Wait Until Element Is Visible    ${EditLead}    ${Wait}
    Click Element    ${EditLead}
    Wait Until Element Is Visible    ${EditMobile}    ${Wait}
    Click Element    ${EditMobile}
    Input Text    ${EditMobile}    01234445677
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer Ui edit pencil
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${ClickListview}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Sleep    2s
    Click Element    ${DrawerLeadCreate}
    Wait Until Element Is Visible    ${EditLead}    ${Wait}
    Click Element    ${EditLead}
    Wait Until Element Is Visible    ${EditMobile}    ${Wait}
    # Click Element    ${EditPenLeedicon}
    # Wait Until Element Is Visible    ${EditMobile}    ${Wait}
    Click Element    ${EditMobile}
    Sleep    1s
    Clear Element Text    ${EditMobile}
    Input Text    ${EditMobile}    09876543456
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}
    # Click Element    xpath=(//span[text()='Email'])//..//..//..//*/input
    # Clear Element Text    xpath=(//span[text()='Email'])//..//..//..//*/input
    # Input Text    xpath=(//span[text()='Email'])//..//..//..//*/input    bankhaha001@gmail.com
    # Click Element    ${ButtonSaveLead}
    # Wait Until Element Is Visible    ${WaitSucces}    ${Wait}

Drawer Ui edit pencil workphone
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${ClickListview}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Sleep    2s
    Click Element    ${DrawerLeadCreate}
    Wait Until Element Is Visible    ${EditLead}    ${Wait}
    Click Element    ${EditLead}
    Wait Until Element Is Visible    ${EditLeadWorkphone}    ${Wait}
    Click Element    ${EditPenLeedicon}
    Wait Until Element Is Visible    ${EditLeadWorkphone}    ${Wait}
    Clear Element Text    ${EditLeadWorkphone}
    Sleep    1s
    Input Text    ${EditLeadWorkphone}    0572835823
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer Ui Lead Number
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${ClickListview}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Click Element    ${DrawerLeadCreate}
    Wait Until Element Is Visible    ${EditLead}    ${Wait}
    Click Element    ${EditLead}
    Wait Until Element Is Visible    ${EditMobile}    ${Wait}
    Click Element    ${NumberLeadicon}
    Wait For New Window Open    ${Wait}
    Switch Window    url=.*edit.*
    ${howto}=    Get Location
    Sleep    2s
    Switch Window    url=.*engagement
    ${Test01}=    Get Location
    Sleep    2s

Drawer Listview duplicate from page Create Engagement Lead
    Click Element    ${ButtonLead}
    Wait Until Element Is Visible    ${Owneragent}    ${Wait}
    Click Element    ${AllLeadDrawer}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Sleep    2s
    Click Element    ${DrawerLeadCreate}
    Wait Until Element Is Visible    ${ClickDuplicate}    ${Wait}
    Click Element    ${ClickDuplicate}
    Wait Until Element Is Visible    ${ButtonSaveLead}    ${Wait}
    Sleep    1s
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}
    # Click Element    ${clickcreatelead}
    # Wait Until Element Is Visible    ${EditMobile}    ${Wait}

Drawer Listview Delete from page Create Engagement Lead
    Click Element    ${ButtonLead}
    Wait Until Element Is Visible    ${Owneragent}    ${Wait}
    Click Element    ${AllLeadDrawer}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Sleep    2s
    Click Element    ${DrawerLeadCreate}
    Wait Until Element Is Visible    ${ClickDelete}    ${Wait}
    Click Element    ${ClickDelete}
    Wait Until Element Is Visible    ${BannerDelete}    ${Wait}
    Click Element    ${Clickconfirm}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s

Drawer Create Lead and close
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${CloseDrawerLead}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer All Lead
    Click Element    ${ButtonLead}
    Wait Until Element Is Visible    ${Owneragent}    ${Wait}
    Click Element    ${AllLeadDrawer}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}
    Sleep    2s
    Click Element    ${CloseDrawerLead}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer All Lead no Close
    Click Element    ${ButtonLead}
    Wait Until Element Is Visible    ${Owneragent}    ${Wait}
    Click Element    ${AllLeadDrawer}
    Wait Until Element Is Visible    ${Clickidcreate-Lead}    ${Wait}

Drawer Lead no for all lead
    Click Element    ${LeadnoLd}
    Wait Until Element Is Visible    ${EditMobile}    ${Wait}
    # Click Element    ${CloseDrawerLead}

Create Filter Object Lead
    Go To    url=${BaseURL}/object/lead
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}
    Click Element    ${setFilter}
    Wait Until Element Is Visible    ${FilterManagement}    ${Wait}
    Click Element    ${FilterManagement}
    Wait Until Element Is Visible    ${AllLeadFilter}    ${Wait}
    Click Element    ${CreateFileter}
    Wait Until Element Is Visible    ${ConditionFilter}    ${Wait}
    Click Element    ${NameFilter}
    Input Text    ${NameFilter}    Lead Test
    Sleep    1s
    Click Element    ${LeadIDFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitLeadIDFilter}    ${Wait}
    Click Element    ${LeadNoFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitLeadNoFilter}    ${Wait}
    Click Element    ${CreatedByFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitCreatedByFilter}    ${Wait}
    Click Element    ${CreatedDateFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitCreatedDateFilter}    ${Wait}
    Click Element    ${LastModifiedFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${LastModifiedFilter}    ${Wait}
    Click Element    ${LastModifiedByFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitLastModifiedByFilter}    ${Wait}
    Click Element    ${ChannelFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitChannelFilter}    ${Wait}
    Click Element    ${EmailFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitEmailFilter}    ${Wait}
    Click Element    ${RemarkFilter}
    Click Element    ${ButtonselectFilter}
    Wait Until Element Is Visible    ${WaitRemarkFilter}    ${Wait}
    Click Element    ${ButtonSaveTH}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    3s
    Wait Until Element Is Visible    ${WaitAllLead}    ${Wait}
    Click Element    ${CloseDrawerLead}    ${Wait}
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}

Delete Filter Lead Test From Object Lead
    Go To    url=${BaseURL}/object/lead
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}
    Click Element    ${setFilter}
    Wait Until Element Is Visible    ${FilterManagement}    ${Wait}
    Click Element    ${FilterManagement}
    Wait Until Element Is Visible    ${AllLeadFilter}    ${Wait}
    Sleep    1s
    Click Element    ${3dotTestLead}
    Wait Until Element Is Visible    ${ClickDelete}    ${Wait}
    Click Element    ${ClickDelete}
    Wait Until Element Is Visible    ${ConfirmDelete}    ${Wait}
    Click Element    ${ConfirmDelete}    ${Wait}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${CloseDrawerLead}    ${Wait}
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}

Pin Lead1
    Go To    url=${BaseURL}/object/lead
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}
    Click Element    ${setFilter}
    Wait Until Element Is Visible    ${FilterManagement}    ${Wait}
    Click Element    ${FilterManagement}
    Wait Until Element Is Visible    ${3dotAllLead}    ${Wait}
    Click Element    ${PinLeadTest}
    Wait Until Element Is Visible    ${PinLeadTest}
    Sleep    2s
    Click Button    ${CloseDrawerLead}
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}

Pin Lead2
    Go To    url=${BaseURL}/object/lead
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}
    Click Element    ${setFilter}
    Wait Until Element Is Visible    ${FilterManagement}    ${Wait}
    Click Element    ${FilterManagement}
    Wait Until Element Is Visible    ${3dotAllLead}    ${Wait}
    Click Element    ${PinAllLead}
    Wait Until Element Is Visible    ${PinAllLead}
    Sleep    2s
    Click Button    ${CloseDrawerLead}
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}

Sort List view All
    Click Element    ${SortLeadNo}
    Wait Until Element Is Visible    ${WaitSort}    ${Wait}
    Sleep    2s
    ${number}=    Get Text    ${SortNo1LeadNo}
    ${number2}=    Get Text    ${SortNo2LeadNo}
    ${number}=    Split String    ${number}    0
    ${number2}=    Split String    ${number2}    0
    Should Be True    ${number}[3] > ${number2}[3],${number}[3] < ${number2}[3]

Pagination List view All
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]
    Click Element    ${Inputpagination}
    Clear Element Text    ${Inputpagination}
    Sleep    1s
    Input Text    ${Inputpagination}    3
    Click Element    ${ButtonGo}
    Wait Until Element Is Visible    ${GropLeadno}    ${Wait}
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]
    Click Element    ${ButtonDropdownPagination}
    Wait Until Element Is Visible    ${DropdownPagination50}    ${Wait}
    Click Element    ${DropdownPagination50}
    Wait Until Element Is Visible    ${GropLeadno}    ${Wait}
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]
    Click Element    ${Inputpagination}
    Clear Element Text    ${Inputpagination}
    Sleep    1s
    Input Text    ${Inputpagination}    2
    Click Element    ${ButtonGo}
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]
    Click Element    ${BackButtonPagination}
    Wait Until Element Is Visible    ${GropLeadno}    ${Wait}
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]
    Click Element    ${NextButtonPagination}
    Wait Until Element Is Visible    ${GropLeadno}    ${Wait}
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]
    Click Element    ${ButtonDropdownPagination}
    Wait Until Element Is Visible    ${DropdownPagination100}    ${Wait}
    Click Element    ${DropdownPagination100}
    Wait Until Element Is Visible    ${GropLeadno}    ${Wait}
    ${numberpagi}=    Get Element Count    ${GropLeadno}
    Wait Until Element Is Visible    xpath=(//*[@role="rowgroup"]//*[contains(text(),'SYSTEM')])[${numberpagi}]

Check icon Drawer list view All Lead
    Click Element    ${IcongotoobjectLead}
    Wait For New Window Open    ${Wait}
    Switch Window    url=.*object/lead.*
    ${howto}=    Get Location
    Wait Until Element Is Visible    ${ObjectTable}    ${Wait}
    Sleep    2s
    Switch Window    url=.*engagement
    ${Test01}=    Get Location
    Wait Until Element Is Visible    ${GropLeadno}    ${Wait}
    Sleep    2s

Check side bar Lead set layout
    Go To    ${BaseURL}/object-manager/lead/layout/side
    Wait Until Element Is Visible    ${Waitsidebarlayout}    ${Wait}
    Mouse Over    ${Mouseremark}
    Wait Until Element Is Visible    ${Waitsidebarlayout}    ${Wait}
    Sleep    2s

Required fil Work Phone
    Go To    ${BaseURL}/object-manager/lead/edit/D2wGPNMwe6rvoZ8pfkFl
    Wait Until Element Is Visible    ${Waitobject}    ${Wait}
    Mouse Over    ${WorkPhoneobject}
    Click Element    ${EditObjectWorkphone}
    Wait Until Element Is Visible    ${Waiteditobject}    ${Wait}
    Click Element    ${ButtonRequired}
    Sleep    1s
    Click Element    ${ButtonSaveobject}
    Wait Until Element Is Visible    ${WaitSucces}
    Sleep    2s

Input fil requirred created Lead form Engagement
    Click Element    ${EditLeadWorkphone}
    Sleep    1s
    Input Text    ${EditLeadWorkphone}    0998887744
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Drawer Create Leed error Please review fields
    Click Element    ${clickcreatelead}
    Wait Until Element Is Visible    ${waitleadNo}    ${Wait}
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${BannerError}    ${Wait}

View Lead Info
    Click Element    ${ButtonLead}
    Wait Until Element Is Visible    ${LeadInfo}    ${Wait}
    Click Element    ${LeadInfo}
    Wait Until Element Is Visible    ${EditMobile}    ${Wait}
    Sleep    1s

Go to Engagement in IG
    Go To    ${BaseURL}/engagement
    Wait Until Element Is Visible    ${Goodboi}    ${Wait}
    Click Element    ${SocialIG}
    Wait Until Element Is Visible    ${ChannelIG}    ${Wait}
    Click Element    ${ChannelIG}
    Wait Until Element Is Visible    ${WaitBoxIG}    ${Wait}
    Click Element    ${NoppadonBox}
    Wait Until Element Is Visible    ${WaitNoppadonBox}    ${Wait}

Create data Leed
    Clear Element Text    ${DefalutText}
    Input Text    ${DefalutText}    Chandra
    Sleep    1s
    Click Element    ${ValueTestRadioButtons}
    Click Element    ${DefalutSelect}
    Wait Until Element Is Visible    ${ValueFourSelect}    ${Wait}
    Click Element    ${ValueFourSelect}
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Edit data Lead Defalut field
    Click Element    ${EditPenLeedicon}
    Clear Element Text    ${DefalutText}
    Input Text    ${DefalutText}    Buriram
    Sleep    1s
    Click Element    ${ValueFewRaioButtons}
    Click Element    ${DefalutSelect}
    Wait Until Element Is Visible    ${ValueTheeSelect}    ${Wait}
    Click Element    ${ValueTheeSelect}
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Sleep    2s
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Edit data Lead Defalut field IG
    Click Element    ${EditPenLeedicon}
    Clear Element Text    ${DefalutText}
    Input Text    ${DefalutText}    Buriram
    Sleep    1s
    Click Element    ${ValueFewRaioButtons}
    Click Element    ${DefalutSelect}
    Wait Until Element Is Visible    ${ValueTheeSelect}    ${Wait}
    Click Element    ${ValueTheeSelect}
    Click Element    ${ButtonSaveLead}
    Wait Until Element Is Visible    ${WaitSucces}    ${Wait}
    Click Element    ${Cross}
    Wait Until Element Is Visible    ${waitdate}    ${Wait}

Check Icon Lead no Detail Lead
    Click Element    ${DetailLeadNo}
    Wait For New Window Open    ${Wait}
    Switch Window    url=.*edit.*
    ${howto}=    Get Location
    Wait Until Element Is Visible    ${MobilePhone}    ${Wait}
    Sleep    2s
    Switch Window    url=.*engagement
    ${Test01}=    Get Location
    Wait Until Element Is Visible    ${MobilePhone}    ${Wait}
    Sleep    2s
