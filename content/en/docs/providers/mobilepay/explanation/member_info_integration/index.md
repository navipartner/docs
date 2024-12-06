---
title: "Member Info Integration overview"
description: "The Member info integration feature allows you to use various integrations to request additional information when registering new members, or requesting additional information from your customers.  "
lead: ""
date: 2024-12-05T20:21:31+01:00
lastmod: 2024-12-05T20:21:31+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "member_info_integration-993d88a739846ee3212d8947db78b2c0"
weight: 651
toc: true
type: docs
---


The Member Info Integration feature allows you to use various integrations to request additional information when registering new members, or requesting additional information from your customers.  

This helps in preventing mistakes that could occur during manual information entry, and saves time for both retail staff and customers.

The integration is currently available via the ![elispsis](elipsis_icon.png) button next to the **Phone No.** field on the **Member Information** page, displayed on POS when registering new members:  

  ![customer_card_elipsis](Images/customer_card_elipsis.png)

and on the **Customer Card** page as an action:  

  ![request_customer_info](Images/request_customer_info.png)

{{< alert icon="📝" text="The <b>Request Customer Information</b> action is visible only when an integration is selected for this use case on the <b>Member Info Integration Setup</b> page."/>}}

You can select which integrations you wish to use on the **Member Info Integration Setup** page. You can also set up an **Implicit Phone No. Prefix** to be used during requests so that you don't have to provide it on the POS for each member.

  ![member_info_integration_setup](Images/member_info_integration_setup.png)      

## Vipps/MobilePay

Vipps/MobilePay is a mobile wallet app (originally two apps, Vipps, founded in Norway and MobilePay, which originated in Denmark).  
Although the app is primarily used for making payments/transfers through the phone, the Login functionality provides a quick and easy way to request additional information from its users.

#### See also

- [<ins>Use Vipps/MobilePay Login functionality<ins>]({{< ref "../../how-to/login_setup/index.md" >}})

