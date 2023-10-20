*** Comments ***
TC-001 ถึง TC-021 คือส่วน Ticket Channel IG


*** Settings ***
Library             PuppeteerLibrary
Library             String
Library             Collections
Library             BuiltIn
Resource            ../connectresource/TicketRevamp-Page.resource

Test Setup          TicketRevamp-Page.Open Browser and Login
Test Teardown       Close All Browser


*** Test Cases ***
TC-001 Verify the UI functionality on the Create Lead page in the case of Sidebar Layout
    TicketRevamp-Page.Check side bar Lead set layout
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer ticketRevamp Create Lead

TC-002 Verify Ui List view in Create Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.List view Lead from page create Lead

TC-003 Verify Ui Lead no in List view to no Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Lead Number from page list view

TC-004 Verify Icon Lead No go Detail Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.View Lead Info
    TicketRevamp-Page.Check Icon Lead no Detail Lead

TC-005 Verify Create Filter new
    TicketRevamp-Page.Create Filter Object Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead

TC-006 Verify Pin List view Drawer Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead
    TicketRevamp-Page.Pin Lead1
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead

TC-007 Verify Unpin List view Drawer Lead
    TicketRevamp-Page.Pin Lead2
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead

TC-008 Verify Delete Filter Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Delete Filter Lead Test From Object Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead

TC-009 Verify Sorting List view Drawer Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead no Close
    TicketRevamp-Page.Sort List view All
    TicketRevamp-Page.Sort List view All

TC-010 Verify Pagination List view Drawer Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead no Close
    TicketRevamp-Page.Pagination List view All

TC-011 Verify Check Icon List view Drawer Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer All Lead no Close
    TicketRevamp-Page.Check icon Drawer list view All Lead

TC-012 Verity Lead No. form list view Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Lead Number from page list view

# TC-013 the UI functionality on the Create Lead page in the case of Sidebar Layout
#    TicketRevamp-Page.Check side bar Lead set layout
#    TicketRevamp-Page.Go to ticketRevamp in Facebook
#    TicketRevamp-Page.Drawer ticketRevamp Create Lead and Save
#    TicketRevamp-Page.List view Lead from page create Lead

TC-013 Verify Create Lead In case there is a field that is Required Field
    TicketRevamp-Page.Required fil Work Phone
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer ticketRevamp Create Lead
    TicketRevamp-Page.Input fil requirred created Lead form ticketRevamp

TC-014 Verify the Required Field in case of not Fill the required information
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer Create Leed error Please review fields

TC-015 Verify Lead Edit In the case of Required Fields
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer Ui edit pencil workphone

TC-016 Verify Lead Edit In the case of No Required Field
    TicketRevamp-Page.Required fil Work Phone
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer Ui edit pencil

TC-017 Verify Create Leed Defalut field type Text,Radio Buttons,Select
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer ticketRevamp Create Lead
    TicketRevamp-Page.Create data Leed

TC-018 Verify Edit Leed Defalut field type Text,Radio Buttons,Select
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.View Lead Info
    TicketRevamp-Page.Edit data Lead Defalut field
    TicketRevamp-Page.View Lead Info

TC-019 Verify View Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.View Lead Info

TC-020 Verify Delete Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer Listview Delete from page Create ticketRevamp Lead

TC-021 Verify Duppicate Lead
    TicketRevamp-Page.Go to ticketRevamp in Facebook
    TicketRevamp-Page.Drawer Listview duplicate from page Create ticketRevamp Lead

# # # Engagement Page in IG

# TC-022 Verify the UI functionality on the Create Lead page in the case of Sidebar Layout
#    TicketRevamp-Page.Check side bar Lead set layout
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer ticketRevamp Create Lead

# TC-023 Verify Ui List view in Create Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.List view Lead from page create Lead

# TC-024 Verify Ui Lead no in List view to no Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Lead Number from page list view

# TC-025 Verify Icon Lead No go Detail Lead
#    TicketRevamp-Page.Go to ticketRevamp in Facebook
#    TicketRevamp-Page.View Lead Info
#    TicketRevamp-Page.Check Icon Lead no Detail Lead

# TC-026 Verify Create Filter new
#    TicketRevamp-Page.Create Filter Object Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead

# TC-027 Verify Pin List view Drawer Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead
#    TicketRevamp-Page.Pin Lead1
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead

# TC-028 Verify Unpin List view Drawer Lead
#    TicketRevamp-Page.Pin Lead2
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead

# TC-029 Verify Delete Filter Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Delete Filter Lead Test From Object Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead

# TC-030 Verify Sorting List view Drawer Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead no Close
#    TicketRevamp-Page.Sort List view All
#    TicketRevamp-Page.Sort List view All

# TC-031 Verify Pagination List view Drawer Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead no Close
#    TicketRevamp-Page.Pagination List view All

# TC-032 Verify Check Icon List view Drawer Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer All Lead no Close
#    TicketRevamp-Page.Check icon Drawer list view All Lead

# TC-033 Verity Lead No. form list view Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Lead Number from page list view

# TC-034 Verify Create Lead In case there is a field that is Required Field
#    TicketRevamp-Page.Required fil Work Phone
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer ticketRevamp Create Lead
#    TicketRevamp-Page.Input fil requirred created Lead form ticketRevamp

# TC-035 Verify the Required Field in case of not Fill the required information
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer Create Leed error Please review fields

# TC-036 Verify Lead Edit In the case of Required Fields
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer Ui edit pencil workphone

# TC-037 Verify Lead Edit In the case of No Required Field
#    TicketRevamp-Page.Required fil Work Phone
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer Ui edit pencil

# TC-038 Verify Create Leed Defalut field type Text,Radio Buttons,Select
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer ticketRevamp Create Lead
#    TicketRevamp-Page.Create data Leed

# TC-039 Verify Edit Leed Defalut field type Text,Radio Buttons,Select
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.View Lead Info
#    TicketRevamp-Page.Edit data Lead Defalut field
#    TicketRevamp-Page.View Lead Info

# TC-040 Verify View Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.View Lead Info

# TC-041 Verify Delete Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer Listview Delete from page Create ticketRevamp Lead

# TC-042 Verify Duppicate Lead
#    TicketRevamp-Page.Go to ticketRevamp in IG
#    TicketRevamp-Page.Drawer Listview duplicate from page Create ticketRevamp Lead
