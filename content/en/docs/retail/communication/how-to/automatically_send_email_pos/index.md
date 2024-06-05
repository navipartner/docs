---
title: "Automatically send documents to customers"
description: "It is possible to set documents to be sent to customers automatically when a sale is successfully finalized."
lead: ""
date: 2024-06-04T11:56:31+02:00
lastmod: 2024-06-04T11:56:31+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "automatically_send_email_pos-47822a47958eff6e83d55e079dfb27b4"
weight: 161
toc: true
type: docs
---

It is possible to set documents to be sent to customers automatically whenever a sale is successfully finalized. Make sure the prerequisites are met, and follow the provided steps:

{{< alert icon="📝" text="This feature is not applicable for sales orders."/>}}

#### Prerequisites

- Have a customer attached to the sale.
- Set up the customer's email account.
- Create a report you wish to use in this scenario.

#### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit** and open the related link.      
   A list of available POS units is displayed.
2. [<ins>Create a new POS unit<ins>]({{< ref "../../../pos_processes/how-to/create_pos_unit/index.md" >}}) or open one of the available ones from the list.
3. Navigate to the **POS Profiles** panel, and expand the available options for the [<ins>**POS Receipt Profile**<ins>]({{< ref "../../../pos_profiles/reference/receipt_profile/index.md" >}}).
4. Enable the **Send Email Receipt on Sale** toggle switch on the receipt profile you will use.
5. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Email Templates** and open the related link.      
6. Open the email template that you wish to be used to generate content sent to customers via email, e.g. **SALESTICKET**.
7. Provide the **Table No.** for relevant POS entries, as well as the **Report ID**.     
   Other options and fields can be modified if needed.      
   When a POS sale is successfully performed, the customer will receive an email with the attached file.


#### See also

- [<ins>Set up Email (Business Central)<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/admin-how-setup-email)
- [<ins>Send Documents and Emails (Business Central)<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-how-send-documents-email)
- [<ins>Email setup<ins>]({{< ref "../../explanation/email_setup/index.md" >}})
- [<ins>Set up email templates<ins>]({{< ref "../email_templates/index.md" >}})