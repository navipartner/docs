---
title: "Set up ticket deferral"
description: "Ticket deferral is the process of temporarily recording revenue from ticket sales in an deferred revenue account until the revenue is realized."
lead: ""
date: 2025-01-17T10:24:58+01:00
lastmod: 2025-01-17T10:24:58+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticket_deferral-feba6bf20af90d539884671ce76b1305"
weight: 288
toc: true
type: docs
---

Ticket deferral is the process of temporarily recording revenue from ticket sales in an deferred revenue account until the revenue is realized. In this context, deferred revenue refers to payments received for tickets that have been sold but not yet redeemed for entry. When a customer uses the ticket for admission, the corresponding amount is moved from the deferred revenue account to the achieved revenue account in Business Central, reflecting the completion of the revenue-earning activity.

The **Ticket Defer Revenue Insight** section in the Role Center provides a centralized view of deferrals. This section helps you track the number of failed or pending deferrals, enabling proactive management.

## Setup in Business Central

To set up this feature, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Ticket Requests** and choose the related link.     
   The list of requests related to ticketing is displayed.
2. Click **Navigate** in the ribbon, followed by **Ticket Revenue Deferral**.     
   The **Ticket Revenue Deferral Overview** window is displayed. 
3. Open the **Ticket Defer Revenue Profile** by clicking **Navigate** followed by **Deferral Profile** in the ribbon. 
4. Create **New** and populate the necessary fields:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies a unique identifier for the profile. |
| **Description** | Specifies a brief description of the profile. |
| **Achieved Revenue Account** | Specifies the account to which revenue is moved when a ticket is redeemed. | 
| **Journal Template Name** | References a journal for posting, if applicable. | 
| **No. Series** | Specifies the number series what will be used for posting the documents. | 
| **Posting Mode** | The following options are available: <br/> <ul> <li> **Compressed** - posts the total of all entries for a single day; picks a number from the specified **No. Series**; </li> <li> **Uncompressed** - posts one line per transaction; picks a number from the specified **No. Series**; </li> <li> **Inline** - posts directly from the original document; uses the number of the original document. </li> </ul> | 
| **Max Attempts** | Specifies the maximum number of retries for the associated job before manual intervention is required. |

5. Click **Actions** in the ribbon, followed by **Setup Job Queue**.     
   The job queue is created. 
6. Navigate to the **Ticket Type** administrative section and assign the relevant **Defer Revenue Profile Code** to applicable ticket types.    
   Individual ticket items can be excluded from deferral on their item cards.
7. Navigate to the **Ticket Item List** administrative section, and open the **Ticket Item Cards** of the tickets that belong to the selected ticket type. 
8. Either make sure the **Defer Revenue** checkbox is selected or unselected, depending on whether you wish the individual ticket items to be deferrable. 
9.  Navigate to the **General Posting Setup** administrative section and select the relevant **Gen. Prod. Posting Group** from the list. 
10.  Populate the following fields in the posting group:     
   - **Sales Account** - enter the ID of the unearned revenue account.
   - **Achieved Revenue (Ticketing) Account** - specify the account ID if only certain posting groups support ticket deferral.

  {{< alert icon="📝" text="If all posting groups support ticket deferral, you only need to configure the <b>Achieved Revenue Account</b> in the <b>Ticket Defer Revenue Profile</b>."/>}}

## Selling the ticket on POS

After the setup has been completed, you can sell tickets on the POS or test the deferral process:

1. Open the POS, enter your **Salesperson Code**, and press **OK**. 
2. Select **Ticketing**, then choose the event or service for which you want to sell tickets.    
   A pop-up window for making the reservation is displayed.
3. Fill in the reservation details, select the number of tickets, and press **OK**.
4. Press **Go to Payment**, and complete the transaction.


## Processing deferrals in Business Central

After a ticket sale, you can monitor and manage deferrals in Business Central:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Ticket Requests** and choose the related link.     
   The list of created requests is displayed. 
2. Select a ticket request line corresponding to the POS-purchased ticket item, then click **Navigate** in the ribbon, followed by **Ticket Revenue Deferral**.       
   The **Ticket Revenue Deferral Overview** window is displayed. 
   
### Ticket Revenue Deferral Overview

The Ticket Revenue Deferral Overview window displays the deferral status of the selected ticket request. The deferral process is managed in stages, reflected in the status values:

- **Registered** - indicates that the ticket has been purchased.
- **Waiting** - the POS entry or sales order has been posted, and the **Amount to Defer** is applied. The system waits for the ticket to be used.
- **Pending Deferral** - when the ticket is used, this status is set. At the scheduled time, a background job transfers the **Amount to Defer** from the original sales account to the achieved revenue account.
- **Deferred** - the deferral process is complete, and the revenue has been recognized.
- **Unresolved** - this status occurs if the job queue reaches its maximum retry limit without successfully completing the deferral. In this case, manual intervention is required to resolve the issue.
- **Immediate** -assigned to tickets that are issued free-of-charge.
- **Deferred (Forced)** - applied when a ticket has expired and can no longer be used, but the revenue is still posted.

{{< alert icon="📝" text="In most cases, deferral actions are carried out automatically by a scheduled background job. However, the <b>Defer Revenue</b> and <b>Defer Revenue (Batch)</b> actions, located under <b>Process</b> in the ribbon, is available for manual use if necessary."/>}}
