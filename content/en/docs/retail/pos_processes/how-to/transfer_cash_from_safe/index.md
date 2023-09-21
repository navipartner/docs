---
title: "Transfer cash from a safe to a POS unit"
description: "The process of transferring cash from a safe to a POS unit is initiated from the back office, where the transfer is prepared, after which it is continued on the POS unit."
lead: ""
date: 2023-09-20T16:45:01+02:00
lastmod: 2023-09-20T16:45:01+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "transfer_cash_from_safe-147f3087643f087933c4e85403b2786f"
weight: 113
toc: true
type: docs
---

The process of transferring cash from a safe to a POS unit is initiated from Business Central, where the transfer is prepared, after which it is continued on the POS unit. After the transfer is completed, the cash is received by the POS unit. Follow the provided steps to complete the transfer:

## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Setup**, and choose the related link.     
2. Provide the **G/L Account** required for the transfer between the **POS Store** and a **SAFE**.

  ![pos_posting_transfer](Images/pos_posting_transfer.png)

3. Navigate to the **POS Menus** administrative section, and create a [new POS menu button]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}).      
   The **POS Action** attached to this button should be **BIN_TRANSFER**.
4. Open the **Parameters** for the **BIN_TRANSFER** action, and select **Transfer In** in the **Transfer Direction** entry.     
   By doing so, you will be able to access the **POS Payment Bin Transfer Journal** when it is created in the back office. 
5. To prepare the transfer journal, navigate to the **POS Payment Bin Transfer Journal** administrative section or to the **POS Payment Bins** page, and open the **POS Payment Bin Transfer Journal** from there.
6. Populate the following fields: 
   
| Field Name      | Description |
| ----------- | ----------- |
| **Store Code** | Specifies for which store the transfer is performed. |
| **Received From POS Unit Coe** | Leave this field blank as the cash isn't coming from a POS unit. |
| **Transfer From Bin Code** | Specifies from which bin the cash was taken out. In this case, the code you provide should be **SAFE**, if you are transferring from a safe to a POS unit. |
| **Payment Method** | Specifies the method of payment that will be transferred. |
| **Amount** | Specifies the amount that is transferred. |
| **External Document No.** | You can specify an additional reference number, if needed. |
| **Has Denominations** | You can specify the denominations used for sorting the amount that is transferred. |

  ![denominations](Images/denominations.png)

7. Once you're satisfied with the journal preparation, you need to release it.      
   If the journal isn't released from the back office, it will not be available on the POS, and you will not be able to complete the transfer.     
   When the journal is released, its status will be changed accordingly (to **Released**). 

## Procedure on the POS

1. Open the POS.
2. Click the previously created button that has the **BIN_TRANSFER** action attached to it.      
   A line from the transfer journal is displayed.
3. Select in which denominations the cash is going to be received in. 

   {{< alert icon="📝" text="If you didn't select the option to print the release document or post the POS payment bin entries automatically on setting the <b>Status</b> to <b>Receive</b> in the <b>BIN Transfer Profile</b>, you can do these tasks manually."/>}}

4. When you accept the cash, click **Receive**.     
   The journal is posted as a result.      
   
You can view the posted entry by clicking **Posted POS Payment Bin Entries** in **POS Payment Bin Transfer Journal** in Business Central.

![transfer_from_safe](Images/transfer_from_safe.png)

You can also navigate from the **Posted POS Payment Bin Entries** further to the **POS Bin Entries** and the **G/L Entries**.

![transfer_from_safe2](Images/transfer_from_safe2.png)

{{< alert icon="📝" text="If you want to transfer cash out of the bank into a POS unit bin, the same logic as above will be applied, as the process is also initiated from Business Central. "/>}}