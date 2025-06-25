---
title: "NP Email"
description: "NP Email is a module that integrates directly with Twilio SendGrid. With NP Mail, email management is offloaded from Business Central, which no longer handles email delivery or template editing. Instead, SendGrid takes over, offering powerful tools for sending both transactional and marketing emails, ensuring high deliverability rates, and providing in-depth analytics on email performance."
lead: ""
date: 2023-07-07T12:46:03+02:00
lastmod: 2023-07-07T12:46:03+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "email_setup-e24025e6fffa59f29dac87df3fb0ca81"
weight: 162
toc: true
type: docs
---

NP Email is the new NaviPartner mailing system. It works via an integration to [<ins>Twillo SendGrid<ins>](https://www.twilio.com/en-us), a communication platform for transactional and marketing emails. The platform has an intuitive email template designer with drag and drop functionality, which allows you to create better email designs and provides more insights to deliverability. 
With NP Mail, email management is offloaded from Business Central providing in-depth analytics on email performance.
Currently supporting data providers such as Membership and Ticketing, NP Mail allows you to create dynamic email templates within SendGrid that leverage real-time data from Business Central—enhancing personalization and automation across your email campaigns.

## Requirements

You need to do the following if you wish to use the NP Email features successfully on Business Central:

- Have the **NP Email** permission set under the NaviPartner Feature management.
- Be a fully licensed Business Central user. Delegated administrators and guest users can't use the tenant's email account. 
- Setup NP email account by following the **NP Email account setup** steps
- Create templates for each email type under the **NP Email Templates**
- Add the Language versions on each template under the **NP Email Templates**
- Under **Member emails**, make sure the **Member notification setup** 🡪 **Template Filter Value** is the relevant **Template Id** created in **NP Email Templates**
- Under **Ticket**, make sure the Ticket notification profile list 🡪 **Template Code** is the relevant **Template Id** created in **NP Email Templates**

Now on SendGrid, add data
- Go to NP Email Templates 🡪 go to relevant template 🡪 click **…** and then **view or edit** 🡪 click **Generate Data Example** and then copy the data
- Go to SendGrid 🡪 go to the relevant email template 🡪 click **Preview** 🡪 click **Show Test Data** 🡪 add the test data that was copied from BC


#### See also

- [<ins>Set up Email<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/admin-how-setup-email)
- [<ins>Email setup<ins>]({{< ref "../../explanation/email_setup/index.md" >}})
- [<ins>Set up email templates<ins>]({{< ref "../../how-to/email_templates/index.md" >}})