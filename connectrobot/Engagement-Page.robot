*** Comments ***
TC-001 ถึง TC-021 คือส่วน Engagement Channel
TC-022 ถึง TC-042 คือส่วน Engagement Channel IG Story


*** Settings ***
Library             PuppeteerLibrary
Library             String
Library             Collections
Library             BuiltIn
Resource            ../connectresource/Engagement-Page.resource

Test Setup          Engagement-Page.Open Browser and Login
Test Teardown       Close All Browser


*** Test Cases ***
TC-001 Verify the UI functionality on the Create Lead page in the case of Sidebar Layout
    Engagement-Page.Check side bar Lead set layout
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Engagement Create Lead

TC-002 Verify Ui List view in Create Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.List view Lead from page create Lead

TC-003 Verify Lead no in List view to no Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Lead Number from page list view

TC-004 Verify Icon Lead No go Detail Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.View Lead Info
    Engagement-Page.Check Icon Lead no Detail Lead

TC-005 Verify Create Filter new
    Engagement-Page.Create Filter Object Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead

TC-006 Verify Pin List view Drawer Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead
    Engagement-Page.Pin Lead1
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead

TC-007 Verify Unpin List view Drawer Lead
    Engagement-Page.Pin Lead2
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead

TC-008 Verify Delete Filter Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Delete Filter Lead Test From Object Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead

TC-009 Verify Sorting List view Drawer Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead no Close
    Engagement-Page.Sort List view All
    Engagement-Page.Sort List view All

TC-010 Verify Pagination List view Drawer Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead no Close
    Engagement-Page.Pagination List view All

TC-011 Verify Check Icon List view Drawer Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer All Lead no Close
    Engagement-Page.Check icon Drawer list view All Lead

TC-012 the UI functionality on the Create Lead page in the case of Sidebar Layout
    Engagement-Page.Check side bar Lead set layout
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Engagement Create Lead and Save
    Engagement-Page.Drawer All Lead no Close

TC-013 Verify Create Lead In case there is a field that is Required Field
    Engagement-Page.Required fil Work Phone
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Engagement Create Lead
    Engagement-Page.Input fil requirred created Lead form Engagement

TC-014 Verify the Required Field in case of not Fill the required information
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Create Leed error Please review fields
    Sleep    2s

TC-015 Verify Lead Edit In the case of Required Fields
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Ui edit pencil workphone

TC-016 Verify Lead Edit In the case of No Required Field
    Engagement-Page.Required fil Work Phone
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Ui edit pencil

TC-017 Verify Create Leed Defalut field type Text,Radio Buttons,Select
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Engagement Create Lead
    Engagement-Page.Create data Leed

TC-018 Verify Edit Leed Defalut field type Text,Radio Buttons,Select
    Engagement-Page.Go to Engagement in Facebook
    Wait Until Element Is Visible    ${WaitchatNoppadon}    ${Wait}
    Engagement-Page.View Lead Info
    Engagement-Page.Edit data Lead Defalut field
    Wait Until Element Is Visible    ${WaitchatNoppadon}    ${Wait}
    Engagement-Page.View Lead Info

TC-019 Verify View Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.View Lead Info

TC-020 Verify Delete Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Listview Delete from page Create Engagement Lead

TC-021 Verify Duppicate Lead
    Engagement-Page.Go to Engagement in Facebook
    Engagement-Page.Drawer Listview duplicate from page Create Engagement Lead

# # # Engagement Page in IG

# TC-022 Verify the UI functionality on the Create Lead page in the case of Sidebar Layout
#    Engagement-Page.Check side bar Lead set layout
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Engagement Create Lead

# TC-023 Verify Ui List view in Create Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.List view Lead from page create Lead

# TC-024 Verify Ui Lead no in List view to no Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Lead Number from page list view

# TC-025 Verify Icon Lead No go Detail Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.View Lead Info
#    Engagement-Page.Check Icon Lead no Detail Lead

# TC-026 Verify Create Filter new
#    Engagement-Page.Create Filter Object Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead

# TC-027 Verify Pin List view Drawer Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead
#    Engagement-Page.Pin Lead1
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead

# TC-028 Verify Unpin List view Drawer Lead
#    Engagement-Page.Pin Lead2
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead

# TC-029 Verify Delete Filter Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Delete Filter Lead Test From Object Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead

# TC-030 Verify Sorting List view Drawer Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead no Close
#    Engagement-Page.Sort List view All
#    Engagement-Page.Sort List view All

# TC-031 Verify Pagination List view Drawer Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead no Close
#    Engagement-Page.Pagination List view All

# TC-032 Verify Check Icon List view Drawer Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer All Lead no Close
#    Engagement-Page.Check icon Drawer list view All Lead

# TC-033 the UI functionality on the Create Lead page in the case of Sidebar Layout
#    Engagement-Page.Check side bar Lead set layout
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Engagement Create Lead and Save
#    Engagement-Page.List view Lead from page create Lead

# TC-034 Verify Create Lead In case there is a field that is Required Field
#    Engagement-Page.Required fil Work Phone
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Engagement Create Lead
#    Engagement-Page.Input fil requirred created Lead form Engagement

# TC-035 Verify the Required Field in case of not Fill the required information
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Create Leed error Please review fields

# TC-036 Verify Lead Edit In the case of Required Fields
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Ui edit pencil workphone

# TC-037 Verify Lead Edit In the case of No Required Field
#    Engagement-Page.Required fil Work Phone
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Ui edit pencil

# TC-038 Verify Create Leed Defalut field type Text,Radio Buttons,Select
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Engagement Create Lead
#    Engagement-Page.Create data Leed

# TC-039 Verify Edit Leed Defalut field type Text,Radio Buttons,Select
#    Engagement-Page.Go to Engagement in IG
#    Wait Until Element Is Visible    ${WaitChatIG}    ${Wait}
#    Engagement-Page.View Lead Info
#    Engagement-Page.Edit data Lead Defalut field IG
#    Wait Until Element Is Visible    ${WaitChatIG}    ${Wait}
#    Engagement-Page.View Lead Info

# TC-040 Verify View Lead
#    Engagement-Page.Go to Engagement in IG
#    Wait Until Element Is Visible    ${WaitChatIG}    ${Wait}
#    Engagement-Page.View Lead Info

# TC-041 Verify Delete Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Listview Delete from page Create Engagement Lead

# TC-042 Verify Duppicate Lead
#    Engagement-Page.Go to Engagement in IG
#    Engagement-Page.Drawer Listview duplicate from page Create Engagement Lead
