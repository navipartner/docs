---
title: "Use the Vipps/MobilePay Login functionality"
description: "Despite Vipps/MobilePay app being primarily a mobile wallet, it can also used for storing additional information about the user."
lead: ""
date: 2024-12-05T21:02:27+01:00
lastmod: 2024-12-05T21:02:27+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "login_setup-1e1df09e74343ae2fcab04066f8e4b03"
weight: 650
toc: true
type: docs
---

Despite Vipps/MobilePay app being primarily a mobile wallet, it can also used for storing additional information about the user.

To use the Vipps/MobilePay Login functionality, make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites

- Make sure the **Vipps/MobilePay** use cases have been selected in the [<ins>**Member Info Integration Setup**<ins>]({{< ref "../../explanation/member_info_integration/index.md" >}}) page in Business Central.     

   ![member_info_integration_setup](Images/member_info_integration_setup.png)      

   The following options are available:    

   - **Request Customer Info. Action** - specifies which integration is tied to the request for customer information on the **Customer Card** page.
   - **Phone No. OnAssistEdit Integr.** - specifies which integration is tied to the request for customer's phone number when registering a new member on the POS. 


#### Procedure

You can request customer information either from the POS or from the relevant **Customer Card** in Business Central. Both procedures are described in the following text:

### POS

1. Open the POS, and add a membership to the checkout.     
2. Select a membership and register a new member.     
   The **Member Information** pop-up window is displayed.
3. Enter the customer's phone number in the dedicated field on the page and click ![elipsis](elipsis_icon.png).      
   A dialog is displayed, informing you that the request needs to be confirmed by a customer to proceed.  

   ![phone_no_vipps](Images/phone_no_vipps.png)

   After the customer confirms the request, the dialog page closes and the customer's information is promptly collected and saved.   

   {{< alert icon="📝" text="If the user hasn't enabled push notification for Vipps/MobilePay, they need to manually open the app and possibly pull the home screen down for a refresh to receive the authentication request."/>}}

   Try out the POS portion of the Vipps/MobilePay Login feature with our interactive demo:

   <iframe class="vidyard_iframe" title="Hartmann’s uses Dynamics 365 Business Central to artfully improve operations" src="
   https://demo.arcade.software/oQlm82iH9P5uxYkhGYq3?embed"
   width=835 height=470 scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen></iframe>

### Customer Card

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Customers**, and choose the related link.         
   The list of available customers is displayed.
2. Select the customer you need to retrieve personal information from.      
   The **Customer Card** is opened.
3. In the ribbon, click **Customer**, followed by **Request Customer Information**.        

   ![request_customer_info](Images/request_customer_info.png)    

   A dialog is displayed, informing you that the request needs to be confirmed by a customer to proceed. After the customer confirms the request, the dialog page closes and the customer's information is promptly collected and saved.   

   {{< alert icon="📝" text="You can set the scopes of the requested information for each use case scenario on the <b>Vipps MobilePay Login Setup</b> page."/>}}


#### See also

- [<ins>Vipps/MobilePay merchant portal<ins>](https://portal.vippsmobilepay.com/login)       
  *Refer to this portal for more information on any changes regarding flagging parts of the request as mandatory.*
- [<ins>Member info integration overview<ins>]({{< ref "../../explanation/member_info_integration/index.md" >}})